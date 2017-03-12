package ics111_helloworld;
import java.awt.Color;
import java.util.Random;

public class HelloWorld {
	public static void main(String[] args){
		int sLenX=500, sLenY=500, w=9, h=9;
		EZ.initialize(sLenX, sLenY);

		EZRectangle[] rts = new EZRectangle[10000];
		Random rand = new Random();

		for(int i=0; i< rts.length; i++) {
			Color c = new Color(rand.nextInt(256), rand.nextInt(256), rand.nextInt(256));
		    int x = rand.nextInt(sLenX - w) + w/2;
			int y = rand.nextInt(sLenY - h) + h/2;

			rts[i] = new EZRectangle(x, y, w, h, c, true);
			EZ.addElement(rts[i]);
		}

		while(true) {
//		    if(EZInteraction.wasMouseLeftButtonReleased()) {
				int mx = EZInteraction.getXMouse();
				int my = EZInteraction.getYMouse();
				for (int i=0; i<rts.length; i++) {
					EZRectangle r = rts[i];
//					if (r.isPointInElement(mx, my)) {
						EZ.removeEZElement(r);
						Color c = new Color(rand.nextInt(256), rand.nextInt(256), rand.nextInt(256));
						int x = rand.nextInt(sLenX - w) + w / 2;
						int y = rand.nextInt(sLenY - h) + h / 2;
						rts[i] = new EZRectangle(x, y, w, h, c, true);
						EZ.addElement(rts[i]);
//					}
				}
//			}
			EZ.refreshScreen();
		}
	}
}