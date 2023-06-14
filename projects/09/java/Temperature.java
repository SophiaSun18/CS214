/* Temperature.java implements class Temperature.
 * Student: ZeAi Sun
 * Date: Mar 17, 2023
 ************************************************************/

import java.util.Scanner;
import java.lang.reflect.Array;

class Temperature {

    // Temperature object constructor with initialization  
    public Temperature(Double degrees, Character scale) {
        try {
            test(degrees, scale);
            myDegree = degrees;
            myScale = scale;
        } catch (IllegalArgumentException a) {
            System.out.println("Invalid Argument!");
        }
    }
   
    // test if the given degree and scale constitute a valid temperature
    public static boolean test(Double degrees, Character scale) {
        if (scale == 'f' || scale == 'c' || scale == 'k' || scale == 'F' || scale == 'C' || scale == 'K') {
            if (scale == 'f' || scale == 'F') {
                if (degrees < -459.67) {
                    throw new IllegalArgumentException("Invalid Degree Input!");
                }
            } else if (scale == 'c' || scale == 'C') {
                if (degrees < -273.15) {
                    throw new IllegalArgumentException("Invalid Degree Input!");
                }
            } else {
                if (degrees < 0) {
                    throw new IllegalArgumentException("Invalid Degree Input!");
                }
            }
        } else {
            throw new IllegalArgumentException("Invalid Scale Input!");
        }
        return true;
    }

    // extractor for the degree of a Temperature object
    public final Double getDegree() {
        return myDegree;
    }

    // extractor for the scale of a Temperature object
    public final Character getScale() {
        return myScale;
    }

    // converter to Temperature in F
    public static Temperature convertF(Temperature temp) {
        Temperature newTemp = temp;

        if (Character.toLowerCase(temp.getScale()) == 'c') {
            Double newDegree = temp.getDegree() * 9 / 5 + 32;
            newTemp = new Temperature(newDegree, 'F');
        } else if (Character.toLowerCase(temp.getScale()) == 'k') {
            Double newDegree = (temp.getDegree() - 273.15) * 9 / 5 + 32;
            newTemp = new Temperature(newDegree, 'F');
        }

        return newTemp;
    }

    // converter to Temperature in C
    public static Temperature convertC(Temperature temp) {
        Temperature newTemp = temp;

        if (Character.toLowerCase(temp.getScale()) == 'f') {
            Double newDegree = (temp.getDegree() - 32) * 5 / 9;
            newTemp = new Temperature(newDegree, 'C');
        } else if (Character.toLowerCase(temp.getScale()) == 'k') {
            Double newDegree = temp.getDegree() - 273.15;
            newTemp = new Temperature(newDegree, 'C');
        }
        
        return newTemp;
    }

    // converter to Temperature in K
    public static Temperature convertK(Temperature temp) {
        Temperature newTemp = temp;

        if (Character.toLowerCase(temp.getScale()) == 'c') {
            Double newDegree = temp.getDegree() + 273.15;
            newTemp = new Temperature(newDegree, 'K');
        } else if (Character.toLowerCase(temp.getScale()) == 'f') {
            Double newDegree = (temp.getDegree() - 32) / 1.8 + 273.15;
            newTemp = new Temperature(newDegree, 'K');
        }
        
        return newTemp;
    }

    // input operation that create a Temperature from a string
    public static Temperature InputOp() {
        Scanner keyboard = new Scanner(System.in);
        System.out.println("Enter temp info: ");
        String info = keyboard.nextLine();
        String[] infoList = info.split(" ", 5);
        
        String d = (String)Array.get(infoList, 0);
        Double degree = Double.parseDouble(d);
        String s = (String)Array.get(infoList, 1);
        Character scale = s.charAt(0);

        return new Temperature(degree, scale);
    }

    // output operation that print out a Temperature as a string
    public static void OutputOp(Temperature temp) {
        System.out.printf("%,.2f", temp.getDegree());
        System.out.print("    ");
        System.out.print(temp.getScale());
        System.out.print("    ");
    }

    // raise the degree of a temperature by the given input
    public static Temperature raise(Temperature temp, double factor) {
        return new Temperature(temp.getDegree() + factor, temp.getScale());
    }

    // lower the degree of a temperature by the given input
    public static Temperature lower(Temperature temp, double factor) {
        try {
            test(temp.getDegree() - factor, temp.getScale());
            return new Temperature(temp.getDegree() - factor, temp.getScale());
        } catch (IllegalArgumentException a) {
            System.out.println("Invalid Argument!");
        }
        return temp;
    }

    // check if two Temperatures are equal
    public static boolean equals(Temperature temp1, Temperature temp2) {
        return temp1.getDegree() == temp2.getDegree() && temp1.getScale() == temp2.getScale();
    }

    // check if one Temperature is less than the other
    public static boolean lessThan(Temperature temp1, Temperature temp2) {
        Character s = temp1.getScale();

        if (s == 'F' || s == 'f') {
            temp2 = Temperature.convertF(temp2);
        } else if (s == 'C' || s == 'c') {
            temp2 = Temperature.convertC(temp2);
        } else {
            temp2 = Temperature.convertK(temp2);
        }

        return temp1.getDegree() < temp2.getDegree();
    }

    private Double myDegree;  // private instance variables
    private Character myScale;
    
}