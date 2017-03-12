import java.util.*;
import java.awt.*;

public class RandomRectangles {
	public static void main(String[] args){
		int num = 10;
		int siz = 50;
		int pag = 500;
		EZRectangle[] rts = new EZRectangle[num];
		Random rand = new Random();
		EZ.initialize(pag,pag);

		int lob = siz/2;
		int upb = pag - siz/2;
		for(int i=0; i<num; i++){
			rts[i] = new EZRectangle(siz, siz, rand.nextInt(lob), rand.nextInt(upb), Color.BLACK, true);
		}
	}
}
