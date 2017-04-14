import java.util.*;
import java.io.*;

public class FileIO {
    public static void main(String[] args){
        System.out.println("started");
        try {
            load();
            compile();
            run();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void load() throws IOException {
        File f = new File("./src/FileIO.java");
        new File("./file-io/src").mkdirs();
        new File("./file-io/bin").mkdirs();
        File g = new File("./file-io/src/FileIO.java");
        BufferedReader br = new BufferedReader(new FileReader(f));
        BufferedWriter bw = new BufferedWriter(new FileWriter(g));
        String c = "";
        while((c = br.readLine()) != null){
            System.out.println(c);
            bw.write(c);
            bw.newLine();
        }
        br.close();
        bw.close();
        System.out.println("loaded");
    }

    public static void compile() throws IOException {
        ProcessBuilder pb = new ProcessBuilder("javac", "-cp", "./file-io/bin", "-d", "./file-io/bin" , "./file-io/src//FileIO.java");
        BufferedReader br = new BufferedReader( new InputStreamReader(pb.start().getErrorStream()));
        String s = "";
        while((s = br.readLine()) != null) System.out.println(s);
        System.out.println("compiled");
    }

    public static void run() throws IOException {
        System.out.println("running");
        ProcessBuilder pb = new ProcessBuilder("java", "-cp", "./bin", "FileIO");
        pb.directory(new File("./file-io"));
        BufferedReader br = new BufferedReader( new InputStreamReader(pb.start().getInputStream()));
        String s = "";
        while((s = br.readLine()) != null) System.out.println(s);
    }
}
