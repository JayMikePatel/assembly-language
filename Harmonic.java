89% of storage used … If you run out, you can't create, edit, and upload files.
/* CS 254 Program 1
| Author: Jay Patel
| Date: 01/26/2024
| 
| Computes sum of first N terms of 
| Harmonic Series in four ways
|
*/
import java.util.Scanner;

public class Harmonic {
	public static void main(String[] args) {
		// Initialize variables
		Scanner scanner = new Scanner(System.in);
		float ascFloat = 0;
		float descFloat = 0;
		double ascDouble = 0.0;
		double descDouble = 0.0;
		
		System.out.print("Upper Limit --> ");
		int n = scanner.nextInt(); // Receive user input upper limit
		
		// Calculate and print upward sum float
		for (int i = 1; i <= n; i++) {
			ascFloat += (float) 1.0/i;
		}
		System.out.println("upward sum (float) = " + ascFloat);
		
		// Calculate and print downward sum float
		for (int i = n; i >= 1; i--) {
			descFloat += (float) 1.0/i;
		}
		System.out.println("downward sum (float) = " + descFloat);
		
		// Calculate and print upward sum double
		for (int i = 1; i <= n; i++) {
			ascDouble += (double) 1.0/i;
		}
		System.out.println("upward sum (double) = " + ascDouble);
		
		// Calculate and print downward sum double
		for (int i = n; i >= 1; i--) {
			descDouble += (double) 1.0/i;
		}
		System.out.println("downward sum (double) = "+ descDouble);
	}
}
