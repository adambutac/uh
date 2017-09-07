import java.awt.*;
import java.util.ArrayList;

public class Two {
  public static void main(String[] args) {
    boolean array[][] = {{false, true, true,  true,  false},
                         {false, true, false, true,  false},
                         {true, false, false, false, true},
                         {false, true, false, true,  false},
                         {false, true, true,  true,  false}};

    EZ.initialize(100,100);
    for(int y = 0; y < 5; y++) {
      for(int x = 0; x < 5; x++) {
        if(array[y][x]) {
          //something happens
          EZ.addCircle(x * 20 + 10,y * 20 + 10 ,20,20, Color.RED, true);
        }
      }
    }

    ArrayList<Integer> list = new ArrayList<Integer>();

    for(int i = 0; i < 10; i++){
      list.add(i);
    }

    for(int i = 0; i < list.size(); i++){
      list.remove(i);
    }

    for(int i = 0; i < list.size(); i++){
      System.out.println(list.get(i));
    }

    EZ.refreshScreen();
  }

}
