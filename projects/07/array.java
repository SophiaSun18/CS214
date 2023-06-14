/* array.java is a class that contains a subprogram that fills an
 * array with values and a subprogram that displays the values in
 * the array.
 * 
 * Student Name: ZeAi Sun
 * Date: Feb 28, 2023
 ***************************************************************/

import java.util.Scanner;

// java class array
public class array
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the size of the array.
      System.out.println("\nEnter the size of the array: ");
      int size = Integer.parseInt(keyboard.next());

      // create array with the given size, call readArray() and printArray().
      double [] result = new double[size];
      readArray(result, size);
      printArray(result, size);
    }
  
  /* readArray() fills an already-allocated array with values from the keyboard.
   * Receive: array anArray, int itsSize.
   *****************************************************/
  public static void readArray(double[] anArray, int itsSize)
    {
        Scanner next = new Scanner(System.in);
        for (int i = 0; i < itsSize; i++) {
            System.out.println("Enter the next value: ");
            anArray[i] = Double.parseDouble(next.next());
        }
    } 

  /* printArray() displays the values in an array on the screen, separated by newlines.
   * Receive: array anArray, int itsSize.
   *****************************************************/
  public static void printArray(double[] anArray, int itsSize)
    {
      for (int i = 0; i < itsSize; i++) {
        System.out.println(anArray[i]);
      }
    } 
}