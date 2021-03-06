import org.ics432.raytracer.ABunchOfSpheres;

import java.lang.ArrayIndexOutOfBoundsException;
import java.lang.NumberFormatException;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

public class MakeMovieConcurrent {
    /* A hashmap of <name, system time in millis>. */
    public static HashMap<String, Long> times = new HashMap();
    /* The thing we used to render images. */
    private ABunchOfSpheres movie;
    /* An array to hold some threads. */
    private ExecutorService threadPool; 
    private int num_frames;    
    private int num_threads;
    public static final int MAX_TIME_IN_MIN = 60;

    public MakeMovieConcurrent(int frames, int threads) {
        num_frames = frames;
        num_threads = threads;
        // Create a movie object
        movie = new ABunchOfSpheres(); 
        threadPool = Executors.newWorkStealingPool(num_threads); 
    }
    public void makeMovie(){
        // Render the frames
        for (int count = 0; count < num_frames - 1; count++) {
            threadPool.submit(new Renderer(count));
        }
        Future task = threadPool.submit(new Renderer(num_frames - 1)); 
        // No longer accepting new tasks. 
        threadPool.shutdown();
        try{
            /* Wait for the last few threads to complete. */
            if(!threadPool.awaitTermination(MAX_TIME_IN_MIN, TimeUnit.MINUTES))
                abort("Computation took longer than " + MAX_TIME_IN_MIN + ".");
        }catch(InterruptedException e){
            e.printStackTrace();
        }
    }

    private static void abort(String message) {
        System.err.println(message);
        System.exit(1);
    }

    public void printExecutionTimes(){
        double t = 0;
        for(int i = 0; i < num_frames; i++){
            t = times.get("Frame " + i + " Finish") 
                - times.get("Frame " + i + " Start");
            t = t/1000.0;
            System.out.println("Frame " + i + ": " + String.format("%.2fs", t)); 
        }

        t = times.get("Frame " + (num_frames - 1) + " Finish") 
            - times.get("Frame 0 Start");
        t = t/1000.0;
        System.out.println("Program Total: " + String.format("%.2fs", t)); 
    }

    public static void main(String[] args) {
        int num_frames = 0;
        int num_threads = 0;
        
        /* Get arguments. */
        try {
             num_frames = Integer.parseInt(args[0]);
             num_threads = Integer.parseInt(args[1]);
        } catch (NumberFormatException e) {
            abort("Invalid number of frames or threads (should be an integer)");
        } catch (ArrayIndexOutOfBoundsException e) {
            abort("Usage: java MakeMovieConcurrent <num of frames> <num of threads>");
        }
        if (num_frames < 0) {
            abort("Invalid number of frames (should be positive)");
        }
        if (num_threads < 0) {
            abort("Invalid number of threads (should be positive)");
        }

        /* Start making the movie. */
        MakeMovieConcurrent mmc = new MakeMovieConcurrent(num_frames, num_threads);
        mmc.makeMovie();
        mmc.printExecutionTimes();
    }
    
    public class Renderer implements Runnable{
        private final int frame_id;
        
        public Renderer(int id){
            frame_id = id;
        }
        @Override
        public void run(){
                times.put("Frame " + frame_id + " Start", 
                           System.currentTimeMillis());
                movie.render_scene("./frame_" + String.format("%05d", frame_id) 
                                              + ".png", frame_id);
                times.put("Frame " + frame_id + " Finish",
                           System.currentTimeMillis());
        }
    }
}

