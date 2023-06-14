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

