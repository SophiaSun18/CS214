Script started on 2023-02-20 15:37:33-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="105" LINES="42"]
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ cat quadraticRoots.java
/* quadraticRoots.java is a class and program that computes
 * the roots of a quadratic equation.
 * 
 * Student Name: ZeAi Sun
 * Date: Feb 20, 2023
 ***************************************************************/

import java.util.Scanner;

// java class quadraticRoots
public class quadraticRoots
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the value of a
      System.out.println("\nEnter the value of a: ");
      double a = Double.parseDouble(keyboard.next());

      // prompt for the value of b
      System.out.println("\nEnter the value of b: ");
      double b = Double.parseDouble(keyboard.next());

      // prompt for the value of c
      System.out.println("\nEnter the value of c: ");
      double c = Double.parseDouble(keyboard.next());

      //Create list, compute results and print
      double [] resultList = new double[2];
      quadraticRoots(a, b, c, resultList);
      System.out.println("\nThe first root is " + resultList[0] + " and the second root is " + resultList[1]);
      
    }
  
  /* quadraticRoots() computes the roots of a quadratic equation.
   * Receive: a, b, c, the three factors.
   * Return: root1, root2, the two roots.
   *****************************************************/
  public static void quadraticRoots(double a, double b, double c, double[] results)
    {
      double arg = b * b - 4 * a * c;
      if (a != 0) {
        if (arg >= 0) {
          results[0] = (-1 * b + Math.sqrt(arg)) / (2 * a);
          results[1] = (-1 * b - Math.sqrt(arg)) / (2 * a);
        }
      } else {
        results[0] = 0;
        results[1] = 0;
      }
    } 
}]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ javac dr  -dr eprecation quadraticRoots.java
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ java quadraticRoots

Enter the value of a: 
1

Enter the value of b: 
5

Enter the value of c: 
6

The first root is -2.0 and the second root is -3.0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ java quadraticRoots

Enter the value of a: 
0

Enter the value of b: 
5

Enter the value of c: 
6

The first root is 0.0 and the second root is 0.0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ java quadraticRoots

Enter the value of a: 
1

Enter the value of b: 
1

Enter the value of c: 
5

The first root is 0.0 and the second root is 0.0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ java quadraticRoots

Enter the value of a: 
1

Enter the value of b: 
2

Enter the value of c: 
15  1 -15

The first root is 3.0 and the second root is -5.0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ exit
exit

Script done on 2023-02-20 15:38:20-05:00 [COMMAND_EXIT_CODE="0"]
