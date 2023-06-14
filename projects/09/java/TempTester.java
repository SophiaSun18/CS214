/* TempTester.java is a 'driver' to test class Temperature.
 * Student: ZeAi Sun
 * Date: Mar 17, 2023
 ************************************************************/

import java.util.Scanner;

public class TempTester  
{
  public static void main(String[] args)
  {
    // get all the necessary inputs
      Temperature baseTemp = Temperature.InputOp();
      Temperature limitTemp = Temperature.InputOp();
      
      Scanner keyboard = new Scanner(System.in);
      System.out.println("Enter the step value: ");
      Double stepValue = keyboard.nextDouble();
      keyboard.close();
     
      while (Temperature.lessThan(baseTemp, limitTemp)) {
        Temperature.OutputOp(Temperature.convertF(baseTemp));
        Temperature.OutputOp(Temperature.convertC(baseTemp));
        Temperature.OutputOp(Temperature.convertK(baseTemp));
        System.out.print("\n");
        baseTemp = Temperature.raise(baseTemp, stepValue);
      }

      System.out.println("\nAll tests passed!");

  }
}