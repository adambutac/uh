import java.io.*;
import java.awt.image.*;
import java.util.ArrayList;
import javax.imageio.*;
import com.jhlabs.image.*;

public class ConcurrentImageProcessor{
    /* Used only as a container. */
    public class Image{
        final BufferedImage buf;
        final File file;
        final String filter;

        public Image(BufferedImage i, File f, String s){
            buf = i;
            file = f;
            filter = s;
        }
    }   

    /* Circular array implementation used as 
     * a concurrent FIFO queue. */
    public class ImageQueue{
        private Image[] queue;
        private final int MAX_SIZE;
        private int size;
        private int head;
        private int tail;
        
        public ImageQueue(int max){
            head = 0;
            tail = 0;
            size = 0;
            MAX_SIZE = max; 
            queue = new Image[MAX_SIZE];
        }

        public synchronized void sleepWhileFull(){
            try{
                while(size == MAX_SIZE)
                    wait();
            }catch(InterruptedException e){
                e.printStackTrace();
            }
        }
 
        public synchronized boolean enqueue(Image img){
            try{
                while(size == MAX_SIZE)
                    wait();
            }catch(InterruptedException e){
                e.printStackTrace();
                return false;
            }
            incrementTail();
            queue[tail] = img;
            notify();
            return true;
        }

        public synchronized Image dequeue(){
            try{
                while(size == 0)
                    wait(); 
            }catch(InterruptedException e){
                e.printStackTrace();
                return null;
            } 
            Image temp = queue[head];
            queue[head] = null;
            incrementHead();
            notify();
            return temp;
        }

        private int incrementHead(){
            if(size == 0)
                return head;
            else if(size == 1){
                size--;
                return head;
            }

            int temp = head;
            head = increment(head);
            size--; 
            return temp;
        }
        
        private int incrementTail(){
            if(size == MAX_SIZE)
                return tail;
            else if(size == 0){
                size++;
                return tail;
            }

            int temp = tail;
            tail = increment(tail);
            size++;
            return temp;
        }

        private int increment(int i){
            return (i + 1) % MAX_SIZE;
        }
    }

    public class ImageReader extends Thread{
        private ImageQueue qRef;
        private final ArrayList<File> fRef;
        private final String filter;

        public ImageReader(ImageQueue q, ArrayList<File> f, String fil){
            filter = fil;
            qRef = q;
            fRef = f;
        }

        public void run(){
            long start = 0;
            long finish = 0;

            for(File f: fRef){
                /* We have to first check the state of the queue
                 * before reading in an image. This is only ok
                 * to do because this thread is the only thread
                 * adding to this queue, and is guarenteed to not
                 * be full upon return. Having more than one reader
                 * (or other producer) would break this. */
                qRef.sleepWhileFull();
                start = System.currentTimeMillis();
                BufferedImage buf = readBufferedImage(f);
                finish = System.currentTimeMillis();
                System.out.print("r");
                timer.put("r" + f.getName(), start, finish);
                Image img = new Image(buf, f, filter);
                qRef.enqueue(img);
            } 
        }
    }

    public class ImageWriter extends Thread{
        private ImageQueue qRef;
        private final int COUNT;

        public ImageWriter(ImageQueue q, ArrayList<File> f ){
            qRef = q;
            COUNT = f.size();
        }

        public void run(){
            long start = 0;
            long finish = 0;
            for(int i = 0; i < COUNT; i++){
                Image img = qRef.dequeue();
                /* This will only work on systems that use 
                 * the / separator for directories. */
                String out = img.file.getParent() + "/" 
                           + img.filter + "_" 
                           + img.file.getName();
                if(img.buf != null){
                    start = System.currentTimeMillis();    
                    saveBufferedImage(img.buf, out);
                    finish = System.currentTimeMillis();
                    timer.put("w" + img.file.getName(), start, finish);
                    System.out.print("w");
                }
            }        
        }
    }

    public class ImageProcessor extends Thread{
        private ImageQueue qInRef;
        private ImageQueue qOutRef;
        private final int COUNT;
        private final BufferedImageOp filter;

        public ImageProcessor(ImageQueue qIn, ImageQueue qOut, ArrayList<File> f, String fil){
            qInRef = qIn;
            qOutRef = qOut;
            COUNT = f.size();
            filter = selectFilter(fil);
        }

        public void run(){
            long start = 0;
            long finish = 0;

            for(int i = 0; i < COUNT; i++){
                Image img = qInRef.dequeue();
                BufferedImage bufOut = null;
                if(img.buf != null){
                    bufOut = new BufferedImage(img.buf.getWidth(), 
                            img.buf.getHeight(), img.buf.getType());
                    start = System.currentTimeMillis();    
                    filter.filter(img.buf, bufOut);
                    finish = System.currentTimeMillis();
                    System.out.print("p");
                    timer.put("p" + img.file.getName(), start, finish);
                }
                /* Must enqueue the image even if the buffered image
                 * it contains is null, otherwise COUNT will be off
                 * in the other threads. */
                Image imgOut = new Image(bufOut, img.file, img.filter);
                qOutRef.enqueue(imgOut);
            }         
        }
    }

/* public class ConcurrentImageProcessor{ */
    public static TimeRecordMap timer = new TimeRecordMap(); 

    public ConcurrentImageProcessor(ArrayList<File> files, String filter){
        /* The queue that reader adds to, processor removes from. */
        ImageQueue input  = new ImageQueue(8);
        /* The queue that processor adds to, writer removes from. */
        ImageQueue output = new ImageQueue(8);
        
        /* The threads take in a refrence to the queues they will need
         * to access, as well as the list of files that were found. Also
         * annoyingly must pass the name of the chosen filter. */
        ImageReader reader = new ImageReader(input, files, filter); 
        ImageWriter writer = new ImageWriter(output, files);
        ImageProcessor pro = new ImageProcessor(input, output, files, filter);
        
        reader.start();
        pro.start();
        writer.start();
        try{
            reader.join();
            pro.join();
            writer.join();
        }catch(InterruptedException e){
            e.printStackTrace();
        }
    }

    private static BufferedImage readBufferedImage(File file){
        try {
            return ImageIO.read(file);
        } catch (IOException e) {
                System.out.println("Cannot read file " + file.getAbsoluteFile() + ".");
        }
        return null;
    }

    private static void saveBufferedImage(BufferedImage image, String filename){
        try {
            ImageIO.write(image, "jpg", new File(filename));
        } catch (IOException e) {
            System.out.println("Cannot write file "+filename);
        }
    }

    private static ArrayList<File> getFilesInFolder(File folder) {

        ArrayList<File> files = new ArrayList<File>();

        if(folder.isDirectory()){
            files = new ArrayList<File>();
            for(File f:folder.listFiles()){
                files.add(f);
            }
        }

        return files;
    }

    private static BufferedImageOp selectFilter(String select){

        BufferedImageOp filter;

        switch(select){
            case "oil1":
                filter = new OilFilter();
                ((OilFilter)filter).setRange(1);
                break;
            case "oil3":
                filter = new OilFilter();
                ((OilFilter)filter).setRange(3);
                break;
            case "invert":
                filter = new InvertFilter();
                break;
            case "smear":
                filter = new SmearFilter();
                ((SmearFilter)filter).setShape(0);
                break;
            default:
                filter = null;
                break;
        }

        return filter;
    }

    public static void main(String args[]) {
        long progStart = System.currentTimeMillis();

        BufferedImageOp filter = null;
        ArrayList<File> files  = null;
        String usage = "Usage: <filter name> <directory path>";

        /* Make sure there is the correct number of arguments. */
        if(args.length != 2){
            System.out.println(usage);
            System.exit(1);
        }

        /* Select the chosen filter. */ 
        filter = selectFilter(args[0]);
        if(filter == null){
            System.out.println("Unknown filter \"" + args[0] + "\".");
            System.exit(1);
        }

        /* Get all the files within the directory. */
        files = getFilesInFolder(new File(args[1]));
        if(files == null){
            System.out.println(args[1] + " is not a directory.");
            System.exit(1);
        }
        
        ConcurrentImageProcessor cip = new ConcurrentImageProcessor(files, args[0]);

        long totalRead  = 0;
        long totalProc  = 0;
        long totalWrite = 0;
        char function = 0;
        for(String id: timer.getKeys()){
            function = id.charAt(0);
            if(function == 'r')
                totalRead += timer.getElapsedTime(id);
            else if(function == 'p')
                totalProc += timer.getElapsedTime(id);
            else if(function == 'w')
                totalWrite += timer.getElapsedTime(id);
        }
        double totalExecutionTime = (System.currentTimeMillis() - progStart)/1000.0;
        System.out.println();
        System.out.println("Time spent reading: " + totalRead/1000.0 + " sec.");
        System.out.println("Time spent processing: " + totalProc/1000.0 + " sec.");
        System.out.println("Time spent writing: " + totalWrite/1000.0 + " sec.");
        System.out.println("Overall execution time: " + totalExecutionTime + " sec.");
    }
}
