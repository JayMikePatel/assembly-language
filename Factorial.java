/* CS 254 Program 0
| Author: Jay Patel
| Date: 01/24/2024
| 
| Compute N Factorial for N=1 to 50.
|
*/

public class Factorial {
	public static void main (String[] args) {
		System.out.println("N\tN!"); // Formatting
		System.out.println("----+-----");
		for(int n = 1; n <= 50; n++) { // Loop N=1 to 50
			int nFact = 1;
			for(int i = 1; i <= n; i++) { // Calculate N!
				nFact *= i;
			}
			System.out.println(n + "\t" + nFact); // Print N and N!
		}
	}
}


/* The result that my program computes for 50! is incorrect.
It does not compute N! for any N greater than or equal to 13
because the int variable type does not have enough memory
volume to store the large size of the numbers. The int
variable type only allows numbers from -2147483648 to
2147483647, a total memory volume of 32 bits.
*/
