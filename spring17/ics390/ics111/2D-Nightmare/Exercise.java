import java.io.FileNotFoundException;
import java.io.File;
import java.util.Scanner;

public class Exercise {
  static final int MAX_ROW = 100;
  static final int MAX_COL = 100;
  static final char[][] keyring = new char[MAX_ROW][MAX_COL];

  public static void main(String[] args) throws FileNotFoundException{

    // Load up the key file
    File f = new File("./key.txt");
    // get an iterator to read the file
    Scanner s = new Scanner(f);
    // FYI, this loops forever if you dont read anything.
    while(s.hasNext()){

      /*  The first token from key.txt is the row index */

      /* The second token is the column index */

      /* The third token is the character in ASCII */

      /* Store the char into the keyring using the row and column indecies. */

    }

    /* Open the message file. */

    /* Call decode with the message file and print the result. */

  }

  /* **********************************************************************
   *
   * This function takes in a single File as a parameter.
   *
   * The file contains row, column coordinate pairs.
   *
   * The coordinates are locations of chars in the global 2D array keyring.
   *
   * Loop over all the coordinates in the file, and return a string which
   * contains all the characters retrieved from the keyring.
   *
   * Those who succesfully decode the message will be greatly rewarded.
   *
   * ********************************************************************** */
  //private static String decode(File f) throws FileNotFoundException {}

  private static String encode(String message) {
    // uppercut the message to instill dominance
    message = message.toUpperCase();
    // string for (con)cats
    String cipher = "";
    // for every character in the message
    for(int i = 0; i < message.length(); i++) {

      // and every character in the keyring
      for(int row = 0; row < MAX_ROW; row++) {
        for(int col = 0; col < MAX_COL; col++) {

          // if the char in the message and keyring are the same
          if(message.charAt(i) == keyring[row][col]) {
            // save the coordinates, check if solder is liquid
            cipher += row + " " + col + "\n";
          }
        }
      }
    }
    // return the cats, turns out they're not ours.
    return cipher;
  }
}
