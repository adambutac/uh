import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

public class Part2Original {
	static String[] names = new String[20]; // holds student names
	static int[] grades = new int[20]; // holds grades corresponding to student names
	static int size = 0; // counter to hold number of students
	
	// returns the average of numbers in grades array
	static int average() {
		int average = 0;
		for (int i = 0; i < size; i ++) {
			average += grades[i];
		}
		average = average/size;
		
		return average;
	}
	
	// prints all names and final grades
	static void printGrades() {
		for (int i = 0; i < size; i++) {
			System.out.print(names[i] + " " );
			System.out.println(grades[i]);
		}
	}
	
	public static void main(String[] args) throws FileNotFoundException {
		Scanner fs = new Scanner(new FileReader("finalgrades.txt")); // open file reader stream
		String course = fs.next(); // read in course number	
		
		// read in the names and grades from text file
		while (fs.hasNext()) {
			names[size] = fs.next();
			grades[size] = fs.nextInt();
			size++;
		}
		fs.close();
		
		// please insert the line of code for Part2b here
		
		// print out the student names, grades, and class average (truncated)
		System.out.println(course + " Final Grades");
		printGrades();
		System.out.println("Class average: " + average());
	}
}
