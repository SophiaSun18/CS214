/* RectangleArea.java computes the area of a rectangle.
 *
 * Input: The width and height of the rectangle.
 * Precondition: The width and height are positive numbers.
 * Output: The area of the rectangle.
 *
 * Author: ZeAi Sun
 * Date: Jan 12, 2023
 **********************************************************/

import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function RectangleArea() computes a rectangle's area, given its width and height.
      * Parameter: w and h, both doubles
      * Precondition: w and h are not negative.
      * Returns: the area of the rectangle
      */
     public static double RectangleArea(double w, double h) {
        return w * h;               // return an expression
     } // RectangleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for width
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its width: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the number from the user
      double width = keyboard.nextDouble();

      // prompt for height and get the number from the user
      System.out.print(" enter its height: ");
      double height = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + RectangleArea(width, height) + "\n");
      System.out.printf("The area is %f\n\n", RectangleArea(width, height));
      System.out.printf("The area is %.15f\n\n", RectangleArea(width, height));
  } // main method

} // class RectangleArea
