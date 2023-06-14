Script started on 2023-02-06 21:21:20-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="34"]
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ cat factorial.          Factorial.java
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

]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ h jaca  vac -precation           deprecation Factorial.java
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ java Factorial
To compute n!, enter n: 
5
The value of n! is: 120
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ java Factorial
To compute n!, enter n: 
4^[[A     4
The value of n! is: 24
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ java Factorial
To compute n!, enter n: 
11
The value of n! is: 39916800
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ exit
exit

Script done on 2023-02-06 21:22:02-05:00 [COMMAND_EXIT_CODE="0"]
