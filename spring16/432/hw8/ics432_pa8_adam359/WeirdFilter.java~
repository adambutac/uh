import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;

public class WeirdFilter implements BufferedImageOp{

    @Override
    public BufferedImage createCompatibleDestImage(BufferedImage arg0, ColorModel arg1) {
        // TODO Auto-generated method stub
        return null;
    }

    /* Processes an image as square chunks. */
    public BufferedImage filter(BufferedImage arg0, BufferedImage arg1) {
        int width = arg0.getWidth();
        int height = arg0.getHeight();
        /* This must be odd */
        int chunkSide = 3;

        /* The center is the easy part so we start with that. */
        processChunkCenter(arg0, arg1, width, height, chunkSide);
        /* Then come the edges... */
        processChunkVerticalEdges(arg0, arg1, width, height, chunkSide);
        processChunkHorizontalEdges(arg0, arg1, width, height, chunkSide);
        /* ..and finally the corners. */
        processChunkCorners(arg0, arg1, width, height, chunkSide);
        return arg1;
    }

    private BufferedImage processChunkCenter(BufferedImage arg0, 
                                    BufferedImage arg1, 
                                    int width, int height, int chunkSide){
        int[] chunk = new int[chunkSide*chunkSide];
        /* Index of the origin(center) pixel. */
        final int ORIGIN = chunk.length/2;
        int pixel;
        for(int y = chunkSide/2; y < height-chunkSide/2; y++){
            for(int x = chunkSide/2; x < width-chunkSide/2; x++){
                arg0.getRGB(x-chunkSide/2, y-chunkSide/2,
                            chunkSide, chunkSide,
                            chunk, 0, chunkSide);
                pixel = processPixel(chunk, ORIGIN);
                arg1.setRGB(x,y,pixel);
            }
        }
        return arg1;
    }

    private void processChunkVerticalEdges(BufferedImage arg0, 
                                           BufferedImage arg1,
                                           int width, int height, int chunkSide){
        int len; 
        int pixel;
        int leftOrigin;
        int rightOrigin;
        int[] partial; 
        for(int x = 0; x < chunkSide/2; x++){
            len = chunkSide/2 + 1 + x;
            partial = new int[(len+x) * chunkSide]; 
            leftOrigin = len*(chunkSide/2 + 1) - chunkSide/2 - 1;
            rightOrigin = len*(chunkSide/2 + 1) - x - 1;
            for(int y = chunkSide/2; y < height-chunkSide/2; y++){
                //left
                partial = arg0.getRGB(x, y-chunkSide/2, 
                            chunkSide/2+x+1, chunkSide, 
                            null, 0, chunkSide/2+x+1);
                pixel = processPixel(partial, leftOrigin);
                arg1.setRGB(x,y,pixel);
                //right
                partial = arg0.getRGB(width-chunkSide/2-x-1, y-chunkSide/2,
                        chunkSide/2+x+1, chunkSide, 
                        null, 0, chunkSide/2+x+1);
                pixel = processPixel(partial, rightOrigin);
                arg1.setRGB(width-x-1,y,pixel);
            }
        }
    }

    private void processChunkHorizontalEdges(BufferedImage arg0, 
                                           BufferedImage arg1,
                                           int width, int height, int chunkSide){
        int len; 
        int pixel;
        int topOrigin;
        int bottomOrigin;
        int[] partial; 
        for(int y = 0; y < chunkSide/2; y++){
            len = chunkSide/2 + 1 + y;
            partial = new int[(len+y) * chunkSide]; 
            topOrigin = chunkSide/2 + (y * chunkSide);
            bottomOrigin = len*chunkSide - y*chunkSide - chunkSide/2 - 1;
            for(int x = chunkSide/2; x < height-chunkSide/2; x++){
                //left
                partial = arg0.getRGB(x-chunkSide/2, y, 
                            chunkSide, chunkSide/2+y+1, 
                            null, 0, chunkSide);
                pixel = processPixel(partial, topOrigin);
                arg1.setRGB(x,y,pixel);
                //right
                partial = arg0.getRGB(x-chunkSide/2, height-chunkSide/2-y-1, 
                        chunkSide, chunkSide/2+y+1, 
                        null, 0, chunkSide);
                pixel = processPixel(partial, bottomOrigin);
                arg1.setRGB(x,height-y-1,pixel);
            }
        }
    }

    private void processChunkCorners(BufferedImage arg0,
                                     BufferedImage arg1,
                                     int width, int height, int chunkSide){
    }

    /* Process a pixel using its neighbors (ie skip over the origin). */
    private int processPixel(int[] chunk, int indexOrigin){      
        byte[] newpixel = intToBytes(0);
        byte[] neighbor = new byte[3];

        for(int i = 0; i < indexOrigin; i++){
            neighbor = intToBytes(chunk[i]); 
            newpixel[0] += Math.max(neighbor[0], 40) + 10*Math.cos(neighbor[0]);
            newpixel[1] += Math.min(neighbor[1], 100);
            newpixel[2] += Math.min(Math.exp(neighbor[2]), 40);

        }
        for(int i = indexOrigin + 1; i < chunk.length; i++){
            neighbor = intToBytes(chunk[i]); 
            newpixel[0] += Math.max(neighbor[0], 40) + 10*Math.cos(neighbor[0]);
            newpixel[1] += Math.min(neighbor[1], 100);
            newpixel[2] += Math.min(Math.exp(neighbor[2]), 40);
        }

        newpixel[0] /= chunk.length - 1;
        newpixel[1] /= chunk.length - 1;
        newpixel[2] /= chunk.length - 1;
        return bytesToInt(newpixel);
    }
    

    private static int bytesToInt(byte bytes[]) {
        int value = 0;
        for (int i = 0; i < bytes.length; i++) {
            int shift = (bytes.length - 1 - i) * 8;
            value += (bytes[i] & 0x000000FF) << shift;
        }
        return value;
    }

    private static byte[] intToBytes(int rgb) {
        byte[] bytes = new byte[3];
        for (int i = 0; i < 3; i++) {
            int offset = (2 - i) * 8;
            bytes[i] = (byte) ((rgb >>> offset) & 0xFF);
        }
        return bytes;
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
}
