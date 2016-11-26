import java.util.HashMap;
import java.util.Random;
import java.util.Collections;
import java.util.ArrayList;
import java.util.Set;

public class TimeRecordMap{
    private class TimeRecord{
        long start;
        long finish;

        private TimeRecord(long s){
            start = s;
            finish = s;
        }
 
        private TimeRecord(long s,long f){
            start = s;
            finish = f;
        }
    }

    private HashMap<String, TimeRecord> map = new HashMap<String, TimeRecord>();

    public void put(String id, long start, long finish){
        map.put(id, new TimeRecord(start,finish));
    }

    public void start(String id, long time){
        map.put(id, new TimeRecord(time));
    }

    public void finish(String id, long time){
        TimeRecord record = map.get(id);
        if(record != null)
            record.finish = time;
    }

    public long getStartTime(String id){
        return map.get(id).start; 
    }

    public long getFinishTime(String id){
        return map.get(id).finish;
    }

    public long getElapsedTime(String id){
        TimeRecord record = map.get(id);
        return record.finish - record.start;
    }

    public Set<String> getKeys(){
        return map.keySet();
    }

    public String toString(){
        String ret = "";
        double t = 0;
        ArrayList<String> sortedKeys = new ArrayList<String>(map.keySet());
        Collections.sort(sortedKeys);
        for(String s: sortedKeys){
            t = this.getElapsedTime(s); 
            t = t/1000.0;
            ret += s + ": " + String.format("%.3f sec.", t) + "\n"; 
        }
        return ret;
    }

    public static void main(String[] args){
        TimeRecordMap rec = new TimeRecordMap();
        Random rand = new Random();
        for(int i = 0; i < 10; i++){
            for(int j = 0; j < 3; j++){
               try{
                    rec.start("Img " + i + " " + j, System.currentTimeMillis()); 
                    Thread.sleep(rand.nextInt(4000));
                    rec.finish("Img " + i + " " + j, System.currentTimeMillis()); 
               }catch(InterruptedException e){
                    e.printStackTrace();
               } 
            }
        }
        System.out.println(rec);
    }
}

