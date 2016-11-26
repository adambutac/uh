import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;

import java.util.concurrent.*;

public class DataParallelWeirdFilter implements BufferedImageOp{
    public class FilterThread extends Thread{
        private BufferedImage input, output;
        private final int span, space, yIndex;


        public FilterThread(BufferedImage in, BufferedImage out, int y, int sp, int width){
            input = in;
            output = out;
            yIndex = y;
            space = sp;
            span = width;
        }
        @Override
        public void run(){
            int[] chunk = input.getRGB(0,yIndex-1,span,space,null,0,span);
            int[] buff = new int[span];
            int[] pixels = new int[8];
            buff[0] = DataParallelWeirdFilter.processPixel(new int[]{
                chunk[0],      chunk[1],
                               chunk[span+1],
                chunk[2*span], chunk[2*span+1]
            });
            buff[span - 1] = DataParallelWeirdFilter.processPixel(new int[]{
                  chunk[span-2],   chunk[span-1],
                chunk[2*span-2],
                chunk[3*span-2], chunk[3*span-1]
            });
            for(int x = 1; x < span - 1; x++){
                pixels[0] = chunk[x-1];
                pixels[1] = chunk[x];
                pixels[2] = chunk[x+1];
                pixels[3] = chunk[x+span-1];
                pixels[4] = chunk[x+span+1];
                pixels[5] = chunk[x+2*span-1];
                pixels[6] = chunk[x+2*span];
                pixels[7] = chunk[x+2*span+1];
                buff[x] = DataParallelWeirdFilter.processPixel(pixels);
            }
            output.setRGB(0,yIndex,buff.length,1,buff,0,buff.length); 
        }

    }
    public class FilterEdgeThread extends Thread{
        private BufferedImage input, output;
        private final int span, space, yIndex;


        public FilterEdgeThread(BufferedImage in, BufferedImage out, int y, int sp, int width){
            input = in;
            output = out;
            yIndex = y;
            space = sp;
            span = width;
        }
        @Override
        public void run(){
            if(yIndex == 0){
                int[] chunk = input.getRGB(0,0,span,space,null,0,span);
                int[] buff = new int[span];
                int[] pixels = new int[5];
                buff[0] = DataParallelWeirdFilter.processPixel(new int[]{
                                 chunk[1],
                    chunk[span], chunk[span+1],
                });
                buff[span - 1] = DataParallelWeirdFilter.processPixel(new int[]{
                      chunk[span-2],   
                    chunk[2*span-2], chunk[2*span-1]
                });
                for(int x = 1; x < span - 1; x++){
                    pixels[0] = chunk[x-1];
                    pixels[1] = chunk[x+1];
                    pixels[2] = chunk[x+span-1];
                    pixels[3] = chunk[x+span];
                    pixels[4] = chunk[x+span+1];
                    buff[x] = DataParallelWeirdFilter.processPixel(pixels);
                }
                output.setRGB(0,0,buff.length,1,buff,0,buff.length); 
            }else{
                int[] chunk = input.getRGB(0,yIndex-1,span,space,null,0,span);
                int[] buff = new int[span];
                int[] pixels = new int[5];
                buff[0] = DataParallelWeirdFilter.processPixel(new int[]{
                    chunk[0], chunk[1],
                              chunk[span+1],
                });
                buff[span - 1] = DataParallelWeirdFilter.processPixel(new int[]{
                      chunk[span-2], chunk[span-1],
                    chunk[2*span-2] 
                });
                for(int x = 1; x < span - 1; x++){
                    pixels[0] = chunk[x-1];
                    pixels[1] = chunk[x];
                    pixels[2] = chunk[x+1];
                    pixels[3] = chunk[x+span-1];
                    pixels[4] = chunk[x+span+1];
                    buff[x] = DataParallelWeirdFilter.processPixel(pixels);
                }
                output.setRGB(0,yIndex,buff.length,1,buff,0,buff.length); 
            }
        }
    }

    private int numProcs;

    public DataParallelWeirdFilter(int procs){
        numProcs = procs;
    } 

    @Override
    public BufferedImage createCompatibleDestImage(BufferedImage arg0, ColorModel arg1) {
        // TODO Auto-generated method stub
        return null;
    }

    /* Processes an image as square chunks. */
    public BufferedImage filter(BufferedImage arg0, BufferedImage arg1) {
        final int SQ = 3;
        int width = arg0.getWidth();
        int height = arg0.getHeight();
        //FilterThread f = new FilterThread(arg0,arg1,1,SQ,width);
        //f.start();
        ExecutorService threadPool = Executors.newWorkStealingPool(numProcs); 
        threadPool.submit(new FilterEdgeThread(arg0, arg1, 0,SQ-1,width));
        /* Screw it, read several lines in at a time. */
        for(int y = 1; y < height - 1; y++){
            threadPool.submit(new FilterThread(arg0, arg1, y,SQ,width));
        }
        threadPool.submit(new FilterEdgeThread(arg0, arg1, height-1,SQ-1,width));
        threadPool.shutdown();
        try{
        //    f.join();
            if(!threadPool.awaitTermination(100, TimeUnit.MINUTES))
               System.exit(1);
        }catch(InterruptedException e){
            e.printStackTrace();
        }
        return arg1;
    }

    @Override
    public Rectangle2D getBounds2D(BufferedImage arg0) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Point2D getPoint2D(Point2D arg0, Point2D arg1) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public RenderingHints getRenderingHints() {
        // TODO Auto-generated method stub
        return null;
    }

    public static int bytesToInt(byte bytes[]) {
        int value = 0;
        for (int i = 0; i < bytes.length; i++) {
            int shift = (bytes.length - 1 - i) * 8;
            value += (bytes[i] & 0x000000FF) << shift;
        }
        return value;
    }

    public static byte[] intToBytes(int rgb) {
        byte[] bytes = new byte[3];
        for (int i = 0; i < 3; i++) {
            int offset = (2 - i) * 8;
            bytes[i] = (byte) ((rgb >>> offset) & 0xFF);
        }
        return bytes;
    }

    /* Process a pixel using its neighbors (ie skip over the origin). */
    public static int processPixel(int[] pixels){      
        byte[] newpixel = new byte[]{0,0,0}; 
        byte[] neighbor = new byte[3];

        for(int i = 0; i < pixels.length; i++){
            neighbor = DataParallelWeirdFilter.intToBytes(pixels[i]); 
            newpixel[0] += Math.max(neighbor[0], 40) + 10*Math.cos(neighbor[0]);
            newpixel[1] += Math.min(neighbor[1], 100);
            newpixel[2] += Math.min(Math.exp(neighbor[2]), 40);
        }

        newpixel[0] /= pixels.length;
        newpixel[1] /= pixels.length;
        newpixel[2] /= pixels.length;
        return bytesToInt(newpixel);
    }
}
