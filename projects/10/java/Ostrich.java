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

