/* Factorial.java computes the factorial of the input.
 *
 * Input: int n
 * Output: n!
 * Student Name: ZeAi Sun
 ********************************************************/
import java.util.Scanner; 		// Get input

class Factorial{

  public static void main(String[] args){

    Scanner keyboard = new Scanner(System.in);
    System.out.println("To compute n!, enter n: ");
    int n = keyboard.nextInt();
    int result = 1;

    for (int i = 1; i <= n; i++) {
      result *= i;
    }

    System.out.print("The value of n! is: ");
    System.out.println(result);

  }
}

