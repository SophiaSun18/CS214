Script started on 2023-01-12 19:39:41-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="67"]
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ cat RectangleArea.java
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
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ jaa vac -deprecation RectangleArea.java
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 3
 enter its height: 4

The area is 12.0

The area is 12.000000

The area is 12.000000000000000

]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 6
 enter its height: 9

The area is 54.0

The area is 54.000000

The area is 54.000000000000000

]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ java RectangleArea[19@c -deprecation RectangleArea.java[19P RectangleArea


To compute the area of a rectangle,
 enter its width: 7.5
 enter its height: 9.3

The area is 69.75

The area is 69.750000

The area is 69.750000000000000

]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ exit
exit

Script done on 2023-01-12 19:40:49-05:00 [COMMAND_EXIT_CODE="0"]
