Script started on 2023-01-23 20:11:39-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="139" LINES="22"]
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ cat YearCodes.java
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student Name: ZeAi Sun
 * Date: Jan 23, 2023
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

   public static int yearCode(String year) {
      if (year.equals("freshman"))
         return 1;
      else if (year.equals("sophomore"))
         return 2;
      else if (year.equals("junior"))
         return 3;
      else if (year.equals("senior"))
         return 4;
      else
         return 0;
   }


}
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ cat YearCodes.javad Desktop/214/labs/03[12Pdesktop/214/labs/03/[K/[KDesktop/214/labs/03[4Pat YearCodes.java[Kcat YearCodes.javad Desktop/214/labs/03[12Pdesktop/214/labs/03/[Kp lab02-results /home/cs/214/current/zs35[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cat example6.script observations.txt > lab02-results[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cmake clean[Kcat example6.script observations.txt > lab02-results[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[10Pp lab02-results /home/cs/214/current/zs35[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[20Pd desktop/214/labs/03/[KDesktop/214/labs/03[4Pat YearCodes.java[Kjavac -deprecation YearCodes.java
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ java YearCodes

Enter your academic year: 
freshman
1
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ java YearCodes

Enter your academic year: 
sophomore
2
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ java YearCodesc -deprecation YearCodes.java[19P YearCodes

Enter your academic year: 
junior
3
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ java YearCodes

Enter your academic year: 
senior
4
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ java YearCodes

Enter your academic year: 
master degree       
0
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ exit
exit

Script done on 2023-01-23 20:12:41-05:00 [COMMAND_EXIT_CODE="0"]
