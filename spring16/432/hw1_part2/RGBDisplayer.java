import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/*
 *  A sample Java Swing App that can be use to see RBG colors. This class implements
 *  the ActionListener interface and is thus in charge of reacting to the user
 *  actions on the GUI components.
 */

public class RGBDisplayer implements ActionListener {

    /* Three text fields */
    JTextField textFieldR = null;
    JTextField textFieldG = null;
    JTextField textFieldB = null;
    /* Three buttons */
    JButton turnCustomButton = null;
    JButton quitButton = null;
    JButton turnRedButton = null;
    /* One panel that contains a colored disk */
    PanelWithDisk panel = null;

    /* Constructor */
    public RGBDisplayer() {

        /* Create the three 5-character text fields, with initial values 100, 100, 100 */
        textFieldR = new JTextField("100", 5);
        textFieldG = new JTextField("100", 5);
        textFieldB = new JTextField("100", 5);

        /* Create a "Turn Custom" button that will set the color of the disk
           to the R, G, and B value specified in the text fields. Then make
           this object the "action listener" for this button.
         */
        turnCustomButton = new JButton("Turn Custom");
        turnCustomButton.addActionListener(this);

        /* Create a "Turn Red" button that will set the color of the disk
           to red. Then make
           this object the "action listener" for this button. */
        turnRedButton = new JButton("Turn Red");
        turnRedButton.addActionListener(this);

        /* Create a "Quit" button that will terminate the application. Then make
           this object the "action listener" for this button. */
        quitButton = new JButton("Quit");
        quitButton.addActionListener(this);

        /* Create a panel that displays a colored disk, as implemented
           in the PanelWithDisk nested class. */
        panel = new PanelWithDisk();

        /* Create the main Swing frame */
        JFrame frame = new JFrame();
        /* Using the simplest layout (flow layout) for this frame */
        frame.setLayout(new FlowLayout());

        /* Add all the above widgets to the frame, one after the other */
        frame.add(new JLabel("R: "));
        frame.add(textFieldR);
        frame.add(new JLabel("G: "));
        frame.add(textFieldG);
        frame.add(new JLabel("B: "));
        frame.add(textFieldB);
        frame.add(turnCustomButton);
        frame.add(turnRedButton);
        frame.add(quitButton);
        frame.add(panel);

        /* Pack and render the frame */
        frame.pack();
        frame.setVisible(true);

        /* At this point, the "GUI" pops up */
    }

    /* Main methods, which simply creates an instance of RGBDisplayer */
    public static void main(String[] args) {
        new RGBDisplayer();
    }

    /* The actionPerformed method is invoked every time the user interacts
       with GUI components and an "event" is generated.
     */
    @Override
    public void actionPerformed(ActionEvent event) {

        if (event.getSource() == this.quitButton) {
            /* If the source of the event is the "Quit" button, then quit */
            System.exit(0);
        } else if (event.getSource() == this.turnRedButton) {
            /* If the course of the event is the "Turn Red" button, then
               set the panel color and repaint it in red.
             */
            this.panel.setColor(Color.red);
            this.panel.repaint();
        } else if (event.getSource() == this.turnCustomButton) {
            /* If the course of the event is the "Turn Red" button, then
               set the panel color and repaint it by the color specified
               in the R, G, and B textfields, catching the necessary exceptions
               if the values of those textfields contain bogus data.
             */
            try {
                this.panel.setColor(
                        new Color(Integer.parseInt(this.textFieldR.getText()),
                                Integer.parseInt(this.textFieldG.getText()),
                                Integer.parseInt(this.textFieldB.getText()))
                );
            } catch (NumberFormatException e) {
                System.out.println("Enter integers in the text fields!!");
            } catch (IllegalArgumentException e) {
                System.out.println("Enter integers between 0 and 255 in the tet fields!");
            }
            this.panel.repaint();
        }
    }

    /* Nested class that implements a panel that shows a colored disk */
    private class PanelWithDisk extends JPanel {
        static final int PANEL_WIDTH = 200;     // width of the panel in pixels
        static final int PANEL_HEIGHT = 200;    // height of the panel in pixels

        private volatile Color diskColor;       // Color of the disk

        /* Constructor */
        public PanelWithDisk() {
            this.setPreferredSize(new Dimension(PANEL_WIDTH, PANEL_HEIGHT));
            this.diskColor = Color.red;
        }

        /* Setter method for the disk color */
        public void setColor(Color color) {
            this.diskColor = color;
        }

        /* paintComponent method, which draws the disk of the given
           color given the Graphics object.
         */
        public void paintComponent(Graphics g) {
            /* Call the base-case JPanel paintComponent() methods */
            super.paintComponent(g);

            /* Set the drawing color */
            g.setColor(this.diskColor);

            /* Draw an disk centered in the panel */
            g.fillOval((int) (PANEL_WIDTH * 0.25),
                    (int) (PANEL_WIDTH * 0.25),
                    (int) (PANEL_WIDTH * 0.50),
                    (int) (PANEL_WIDTH * 0.50));
        }
    }
}
