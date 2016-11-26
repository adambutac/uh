import java.io.*;
import java.awt.image.*;
import java.util.ArrayList;
import javax.imageio.*;
import com.jhlabs.image.*;

public class SequentialImageProcessor{

    private static void saveImage(BufferedImage image, String filename){

        try {
            ImageIO.write(image, "jpg", new File(filename));
        } catch (IOException e) {
            System.out.println("Cannot write file "+filename);
            System.exit(1);
        }
    }

    private static ArrayList<File> getFilesInFolder(File folder) {

        ArrayList<File> files = null;

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

    private static BufferedImage readImage(File file){
        try {
            return ImageIO.read(file);
        } catch (IOException e) {
                System.out.println("Cannot read file " + file.getAbsoluteFile() + ".");
        }
        return null;
    }

    public static void main(String args[]) {
        long progStart = System.currentTimeMillis();
        BufferedImage   input  = null;
        BufferedImage   output = null;
        BufferedImageOp filter = null;
        ArrayList<File> files  = null;
        String usage = "Usage: <filter name> <directory path>";
        TimeRecordMap map = new TimeRecordMap();

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

        String name = "";
        long start = 0;
        long finish = 0;
        for(File file:files){
            name = file.getName();
            /* Read */
            start = System.currentTimeMillis();
            input = readImage(file);
            if(input != null){
                finish = System.currentTimeMillis();
                map.put("r" + name, start, finish);
                System.out.print("r");
                output = new BufferedImage(input.getWidth(),input.getHeight(),input.getType()); 
                /* Process */
                start = System.currentTimeMillis();
                filter.filter(input,output);
                finish = System.currentTimeMillis();
                map.put("p" + name, start, finish);
                System.out.print("p");
                /* Write */
                start = System.currentTimeMillis();
                saveImage(output, args[1] + "/" + args[0] + "_" + file.getName());
                finish = System.currentTimeMillis();
                map.put("w" + name, start, finish);
                System.out.print("w");
            }
        }

        long totalRead  = 0;
        long totalProc  = 0;
        long totalWrite = 0;
        char function = 0;
        for(String id: map.getKeys()){
            function = id.charAt(0);
            if(function == 'r')
                totalRead += map.getElapsedTime(id);
            else if(function == 'p')
                totalProc += map.getElapsedTime(id);
            else if(function == 'w')
                totalWrite += map.getElapsedTime(id);
        }
        double totalExecutionTime = (System.currentTimeMillis() - progStart)/1000.0;
        System.out.println();
        System.out.println("Time spent reading: " + totalRead/1000.0 + " sec.");
        System.out.println("Time spent processing: " + totalProc/1000.0 + " sec.");
        System.out.println("Time spent writing: " + totalWrite/1000.0 + " sec.");
        System.out.println("Overall execution time: " + totalExecutionTime + " sec.");
    }
}


