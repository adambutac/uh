package ics111_helloworld;
import java.awt.Color;
import java.util.Random;

public class HelloWorld {
	public static void main(String[] args){
		Random rand = new Random();
		int sLenX=500, sLenY=500;
		int skip = sLenY/10;
		EZ.initialize(sLenX, sLenY);
		for(int i=skip/2; i < sLenY; i+=skip){
			EZ.addLine(rand.nextInt(sLenX), i, rand.nextInt(sLenX), i, Color.BLACK, 1);	
			EZ.addLine(i, rand.nextInt(sLenY), i, rand.nextInt(sLenY), Color.BLACK, 1);	
		}
	}
}