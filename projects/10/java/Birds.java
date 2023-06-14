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

