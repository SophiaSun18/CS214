Script started on 2023-03-13 21:10:02-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="93" LINES="68"]
]0;zs35@gold04: ~/Desktop/214/labs/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/java[00m$ cat Ne ame.java
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: ZeAi Sun
 * Date: Mar 13, 2023
 ************************************************************/

// the Name class appears outside of the rest of the program
class Name {

    // Name object constructor with initialization  
    public Name(final String first, final String middle, final String last) {
        myFirst = first;
        myMiddle = middle;
        myLast = last;
    }
   
    // extractor for first name of a Name object
    public final String getFirst() {
        return myFirst;
    }
  
    // extractor for middle name of a Name object
    public final String getMiddle() {
        return myMiddle;
    }
  
    // extractor for last name of a Name object
    public final String getLast() {
        return myLast;
    }
    
    // return string created by piecing together first, middle, and last names
    public final String toString() {
        return myFirst + ' ' + myMiddle + ' ' + myLast;
    }
  
    private String myFirst, myMiddle, myLast;  // private instance variables
    
}]0;zs35@gold04: ~/Desktop/214/labs/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/java[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: ZeAi Sun
 * Date: Mar 13, 2023
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

]0;zs35@gold04: ~/Desktop/214/labs/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/java[00m$ javac -deprc ecatio  n NameTester
error: Class names, 'NameTester', are only accepted if annotation processing is explicitly requested
1 error
]0;zs35@gold04: ~/Desktop/214/labs/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/java[00m$ javac -deprecation NameTester.java
]0;zs35@gold04: ~/Desktop/214/labs/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/java[00m$ java NameTester
John Paul Jones
All tests passed!
]0;zs35@gold04: ~/Desktop/214/labs/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/java[00m$ exit
exit

Script done on 2023-03-13 21:10:34-04:00 [COMMAND_EXIT_CODE="0"]
