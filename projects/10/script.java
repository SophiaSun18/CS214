Script started on 2023-03-27 14:22:29-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="79" LINES="67"]
]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat BIrd   ird.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

import java.io.*;

public abstract class Bird
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

  /* A Bird's Movement
   */
  abstract String movement();

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    System.out.println( getName() + ' ' + getClass().getName() + " just " + movement() + " and said " + call() );
  } 

  private String myName;
}

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat FlyingBird.java
/* FlyingBird.java provides a FlyingBird subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class FlyingBird extends Bird {

  public FlyingBird()
  {
    super();
  }
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public FlyingBird(String name)
  {
    super(name);
  }

 /* A FlyingBird's Movement
  * Return: a bird-movement ("flew").
  */
  public String movement()
  {
    return "flew past";
  }

}

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat WalkingBird.java
/* WalkingBird.java provides a WalkingBird subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class WalkingBird extends Bird {

  public WalkingBird()
  {
    super();
  }
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public WalkingBird(String name)
  {
    super(name);
  }

 /* A FlyingBird's Movement
  * Return: a bird-movement ("flew").
  */
  public String movement()
  {
    return "walked past";
  }

}

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat Duck.jaa va
/* Duck.java provides a Duck subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class Duck extends FlyingBird {

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

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat Goose.java
/* Goose.java provides a Goose subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class Goose extends FlyingBird {

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

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat Owl.java
/* Owl.java provides an Owl subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class Owl extends FlyingBird{

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

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat Penguin.java
/* Penguin.java provides an Penguin subclass of WalkingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class Penguin extends WalkingBird{

  public Penguin()
  {
    super();
  }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Penguin(String name)
  {
    super(name);
  }

 /* A Penguin's Call
  * Return: a penguin-call ("Huh-huh-huh-huuuuh").
  */
  public String call()
  {
    return "Huh-huh-huh-huuuuh!";
  }

} 

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat Ostrich.java
/* Ostrich.java provides an Ostrich subclass of WalkingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class Ostrich extends WalkingBird{

  public Ostrich()
  {
    super();
  }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Ostrich(String name)
  {
    super(name);
  }

 /* An Ostrich's Call
  * Return: an ostrich-call ("Snork").
  */
  public String call()
  {
    return "Snork!";
  }

} 

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat Kiwi.java
/* Kiwi.java provides an Ostrich subclass of WalkingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 ******************************************************/

public class Kiwi extends WalkingBird{

  public Kiwi()
  {
    super();
  }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Kiwi(String name)
  {
    super(name);
  }

 /* A Kiwi's Call
  * Return: a kiwi-call ("Blablabla").
  */
  public String call()
  {
    return "Blablabla!";
  }

} 

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ cat BIrds    irds.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: ZeAi Sun
 * Date: Mar 25, 2023
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Duck bird1 = new Duck("Donald");
      bird1.print();

      Goose bird2 = new Goose("Mother");
      bird2.print();

      Owl bird3 = new Owl("Woodsey");
      bird3.print();

      Penguin bird4 = new Penguin("Peter");
      bird4.print();

      Ostrich bird5 = new Ostrich("Orville");
      bird5.print();

      Kiwi bird6 = new Kiwi("Katherine");
      bird6.print();

      System.out.println();
    }
}

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ javac -deprecation Birds.jaa va
]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ java BIrd   irds

Welcome to the Bird Park!

Donald Duck just flew past and said Quack!
Mother Goose just flew past and said Honk!
Woodsey Owl just flew past and said Whoo-hoo!
Peter Penguin just walked past and said Huh-huh-huh-huuuuh!
Orville Ostrich just walked past and said Snork!
Katherine Kiwi just walked past and said Blablabla!

]0;zs35@gold01: ~/Desktop/214/projects/10/java[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/java[00m$ exit
exit

Script done on 2023-03-27 14:23:53-04:00 [COMMAND_EXIT_CODE="0"]
