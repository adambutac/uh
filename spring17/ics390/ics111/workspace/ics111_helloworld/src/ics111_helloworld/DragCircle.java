package ics111_helloworld;

import java.awt.*;
import java.util.Random;

/**
 * Created by super on 3/9/17.
 */
public class DragCircle {
    private final int redRadius = 40;
    private final int blackRadius = 50;
    public boolean dragging;
    public EZCircle black;
    public EZCircle red;
    public int x;
    public int y;

    public DragCircle() {
        x = 0;
        y = 0;
        dragging = false;
        red = new EZCircle(0, 0, redRadius, redRadius, Color.RED, true);
        black = new EZCircle(0, 0, blackRadius, blackRadius, Color.BLACK, true);

        black.hide();
        EZ.addElement(black);
        EZ.addElement(red);
    }

    public DragCircle(int _x, int _y) {
        x = _x;
        y = _y;
        dragging = false;
        red = new EZCircle(x, y, redRadius, redRadius, Color.RED, true);
        black = new EZCircle(x, y, blackRadius, blackRadius, Color.BLACK, true);

        black.hide();
        EZ.addElement(black);
        EZ.addElement(red);
    }

    public void interact() {
        int mx = EZInteraction.getXMouse();
        int my = EZInteraction.getYMouse();
        System.out.println("button" + (new Point(mx, my)).toString());

        if(EZInteraction.isMouseLeftButtonDown() && red.isPointInElement(mx, my)) {
            if(dragging) {
                red.translateTo(mx, my);
            }
            else {
                dragging = true;
                black.translateTo(red.getXCenter(), red.getYCenter());
                black.show();
            }
        }
        else {
            dragging = false;
            black.hide();
        }
    }

    public static void main(String[] args) {
        Random r = new Random();
        EZ.initialize(500, 500);
        DragCircle[] list = new DragCircle[10];

        for(int i = 0; i < list.length; i++) {
            list[i] = new DragCircle(r.nextInt(500), r.nextInt(500));
        }

        while(true) {
            for(DragCircle c : list) {
                c.interact();
            }
            EZ.refreshScreen();
        }
    }
}
