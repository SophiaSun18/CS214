Script started on 2023-01-30 20:43:02-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="98" LINES="66"]
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ cat LogTable.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();

    while (start <= stop) {
      System.out.print("The logarithm of ");
      System.out.print(start);
      System.out.print(" is ");
      System.out.println(Math.log10(start));
      start += increment;
    }

  }
}

]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ cat LogTable.javascript.java script.ada script.clj script.ruby > proj03-resul
lts[A
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ cat script.java script.ada script.clojure script.ruby > proj03-r[4@esults[A
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ cat script.java script.ada script.clj script.ruby > proj03-resul[4Pts[A
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ cat LogTable.java[K

[K[A
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ cat LogTable.java[Kjavac -   -deprecation LogTable.java
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
1-
Exception in thread "main" java.util.InputMismatchException
	at java.base/java.util.Scanner.throwFor(Scanner.java:939)
	at java.base/java.util.Scanner.next(Scanner.java:1594)
	at java.base/java.util.Scanner.nextDouble(Scanner.java:2564)
	at LogTable.main(LogTable.java:20)
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
0.5
The logarithm of 1.0 is 0.0
The logarithm of 1.5 is 0.17609125905568124
The logarithm of 2.0 is 0.3010299956639812
The logarithm of 2.5 is 0.3979400086720376
The logarithm of 3.0 is 0.47712125471966244
The logarithm of 3.5 is 0.5440680443502757
The logarithm of 4.0 is 0.6020599913279624
The logarithm of 4.5 is 0.6532125137753437
The logarithm of 5.0 is 0.6989700043360189
The logarithm of 5.5 is 0.7403626894942439
The logarithm of 6.0 is 0.7781512503836436
The logarithm of 6.5 is 0.8129133566428556
The logarithm of 7.0 is 0.8450980400142568
The logarithm of 7.5 is 0.8750612633917001
The logarithm of 8.0 is 0.9030899869919435
The logarithm of 8.5 is 0.9294189257142927
The logarithm of 9.0 is 0.9542425094393249
The logarithm of 9.5 is 0.9777236052888477
The logarithm of 10.0 is 1.0
]0;zs35@gold18: ~/Desktop/214/labs/04[01;32mzs35@gold18[00m:[01;34m~/Desktop/214/labs/04[00m$ exit
exit

Script done on 2023-01-30 20:43:39-05:00 [COMMAND_EXIT_CODE="0"]
