Script started on 2023-03-06 21:07:18-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="92" LINES="21"]
]0;zs35@gold27: ~/Desktop/214/labs/08[01;32mzs35@gold27[00m:[01;34m~/Desktop/214/labs/08[00m$ cat NameTester.jaa va
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: ZeAi Sun
 * Date: Mar 6, 2023
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
    
  private String myFirst, myMiddle, myLast;
};]0;zs35@gold27: ~/Desktop/214/labs/08[01;32mzs35@gold27[00m:[01;34m~/Desktop/214/labs/08[00m$ make java
make: Nothing to be done for 'java'.
]0;zs35@gold27: ~/Desktop/214/labs/08[01;32mzs35@gold27[00m:[01;34m~/Desktop/214/labs/08[00m$ java NameTester
John Paul Jones
All tests passed!
]0;zs35@gold27: ~/Desktop/214/labs/08[01;32mzs35@gold27[00m:[01;34m~/Desktop/214/labs/08[00m$ exit
exit

Script done on 2023-03-06 21:07:38-05:00 [COMMAND_EXIT_CODE="0"]
