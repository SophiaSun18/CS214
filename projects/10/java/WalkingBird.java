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

