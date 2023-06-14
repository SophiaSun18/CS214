Script started on 2023-03-13 16:56:43-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="94" LINES="68"]
]0;zs35@gold02: ~/Desktop/214/projects/08[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/projects/08[00m$ cat NameTester.java
import java.util.Scanner;

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

    aName.setFirst("Alice");
    aName.setMiddle("Mary");
    aName.setLast("Sue");

    assert aName.getFirst().equals("Alice") ;
    assert aName.getMiddle().equals("Mary") ;
    assert aName.getLast().equals("Sue") ;

    System.out.println(aName);
    assert aName.toString().equals("Alice Mary Sue");

    assert aName.lfmi().equals("Sue, Alice M.");

    aName.read();
    System.out.println(aName);

    System.out.println("All tests passed!");
  }
}

class Name
{
  public Name(String first, String middle, String last)
  {
    myFirst = first;
    myMiddle = middle;
    myLast = last;
  }

  public String getFirst() { return myFirst; }

  public String getMiddle() { return myMiddle; }

  public String getLast() { return myLast; }

  public String toString() { return myFirst + ' ' + myMiddle + ' ' + myLast; }

  public void print() { System.out.println( toString() ); }

  public void setFirst(String aFirst) { myFirst = aFirst; }

  public void setMiddle(String aMiddle) { myMiddle = aMiddle; }

  public void setLast(String aLast) { myLast = aLast; }

  public String lfmi() {return myLast + ", " + myFirst + ' ' + myMiddle.charAt(0) + '.'; };

  public void read() {
    Scanner keyboard = new Scanner(System.in);
    myFirst = keyboard.next();
    myMiddle = keyboard.next();
    myLast = keyboard.next();
    keyboard.close();
  };
    
  private String myFirst, myMiddle, myLast;
};]0;zs35@gold02: ~/Desktop/214/projects/08[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/projects/08[00m$ javac -deprecation Nameta  Tester.java
]0;zs35@gold02: ~/Desktop/214/projects/08[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/projects/08[00m$ java NameTester
John Paul Jones
Alice Mary Sue
ZeAi
Sophia
Sun
ZeAi Sophia Sun
All tests passed!
]0;zs35@gold02: ~/Desktop/214/projects/08[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/projects/08[00m$ exit
exit

Script done on 2023-03-13 16:57:08-04:00 [COMMAND_EXIT_CODE="0"]
