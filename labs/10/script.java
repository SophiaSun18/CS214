Script started on 2023-03-24 14:18:57-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="67"]
]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ caty    Birs ds .java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 24, 2023
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
  public Bird()
  {
    myName = "";
  }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Bird(String name)
  {
	  myName = name;
  } 

 /* Name accessor
  * Return: myName.
  */
  public String getName()
  {
    return myName;
  }

 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
  public String call()
  {
    return "Squaaaaaaaaaawk!";
  }

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    System.out.println( getName() + ' ' + getClass().getName() + " says " + call() );
  } 

  private String myName;
}

]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ cat Duck.jaa va
/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 24, 2023
 ******************************************************/

public class Duck extends Bird {

  public Duck()
  {
    super();
  }
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Duck(String name)
  {
    super(name);
  }

 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
  public String call()
  {
    return "Quack!";
  }

}

]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ cat goose.j       Goose.java
/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 24, 2023
 ******************************************************/

public class Goose extends Bird {

  public Goose()
  {
    super();
  }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Goose(String name)
  {
    super(name);
  }

 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
  public String call()
  {
    return "Honk!";
  }

} 

]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ cat owl.    Owl.java
/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 24, 2023
 ******************************************************/

public class Owl extends Bird{

  public Owl()
  {
    super();
  }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Owl(String name)
  {
    super(name);
  }

 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
  public String call()
  {
    return "Whoo-hoo!";
  }

} 

]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ cat i Birds.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 24, 2023
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();

      System.out.println();
    }
}

]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ make
javac -deprecation Birds.java
]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ java i Birda s

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaaaaawk!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Whoo-hoo!

]0;zs35@gold01: ~/Desktop/214/labs/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/java[00m$ exit
exit

Script done on 2023-03-24 14:19:38-04:00 [COMMAND_EXIT_CODE="0"]
