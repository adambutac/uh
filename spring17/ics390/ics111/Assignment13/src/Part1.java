import java.util.ArrayList;

public class Part1 {
	
	public static void main(String[] args) {
		// Declare and initialize an ArrayList of Strings called sharks.
		ArrayList<String> array = new ArrayList<String>();
		// Use the add(Object o) method to add the following names to the array:
		array.add("Bull Shark");
		array.add("Happy Shark");
		array.add("Sand Tiger Shark");
		array.add("Tiger Shark"); 
		array.add("Totoro Shark");
		
		// Use the set(int index, Object o) method to change "Happy Shark" to "Great White Shark"
		array.set(1, "Great White Shark");
		// Use the add(int index, Object o) method to insert "Blacktip Reef Shark" into index 0
		array.add(0, "Blacktip Reef Shark");	
		// Use the remove(Object o) OR remove(int index) method to remove "Totoro Shark"
		array.remove("Totoro Shark");
		// Use a for loop to print out all the shark names in the ArrayList.  
		// You will need to use the size() and get(int index) methods to accomplish this
		for(int i = 0; i < array.size(); i++){
			System.out.println(array.get(i));
		}
		
	}
}

