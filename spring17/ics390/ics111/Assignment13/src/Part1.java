
public class Part1 {

  public static void main(String[] args) {
    // Declare and initialize an ArrayList of Strings called sharks.
    ArrayList<String> list = new ArrayList<String>();
    // Use the add(Object o) method to add the following names to the array:
    list.add("Bull Shark");
    list.add("Happy Shark");
    list.add("Sand Tiger Shark");
    list.add("Tiger Shark");
    list.add("Totoro Shark");

    // Use the set(int index, Object o) method to change "Happy Shark" to "Great White Shark"
    list.aet(1, "Great White Shark");
    // Use the add(int index, Object o) method to insert "Blacktip Reef Shark" into index 0
    list.add(0, "Blacktip Reef Shark");
    // Use the remove(Object o) OR remove(int index) method to remove "Totoro Shark"

    // Use a for loop to print out all the shark names in the ArrayList.
    // You will need to use the size() and get(int index) methods to accomplish this

  }
}

