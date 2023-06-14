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

