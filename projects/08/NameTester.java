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
};