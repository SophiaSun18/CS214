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

