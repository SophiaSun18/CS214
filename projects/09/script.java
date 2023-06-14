Script started on 2023-03-20 14:14:55-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="34"]
]0;zs35@gold04: ~/Desktop/214/projects/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/09/java[00m$ cat Temperature.java
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

    // extractor for the degree of a Temperatur object
    public final Double getDegree() {
        return myDegree;
    }

    // extractor for the scale of a Temperatur object
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
    
}]0;zs35@gold04: ~/Desktop/214/projects/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/09/java[00m$ cat TempTester.java
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
}]0;zs35@gold04: ~/Desktop/214/projects/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/09/java[00m$ make
javac -deprecation Temperature.java
javac -deprecation TempTester.java
]0;zs35@gold04: ~/Desktop/214/projects/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/09/java[00m$ java Tempt tester      Tester
Enter temp info: 
0 F
Enter temp info: 
100 C
Enter the step value: 
2.5
0.00    F    -17.78    C    255.37    K    
2.50    F    -16.39    C    256.76    K    
5.00    F    -15.00    C    258.15    K    
7.50    F    -13.61    C    259.54    K    
10.00    F    -12.22    C    260.93    K    
12.50    F    -10.83    C    262.32    K    
15.00    F    -9.44    C    263.71    K    
17.50    F    -8.06    C    265.09    K    
20.00    F    -6.67    C    266.48    K    
22.50    F    -5.28    C    267.87    K    
25.00    F    -3.89    C    269.26    K    
27.50    F    -2.50    C    270.65    K    
30.00    F    -1.11    C    272.04    K    
32.50    F    0.28    C    273.43    K    
35.00    F    1.67    C    274.82    K    
37.50    F    3.06    C    276.21    K    
40.00    F    4.44    C    277.59    K    
42.50    F    5.83    C    278.98    K    
45.00    F    7.22    C    280.37    K    
47.50    F    8.61    C    281.76    K    
50.00    F    10.00    C    283.15    K    
52.50    F    11.39    C    284.54    K    
55.00    F    12.78    C    285.93    K    
57.50    F    14.17    C    287.32    K    
60.00    F    15.56    C    288.71    K    
62.50    F    16.94    C    290.09    K    
65.00    F    18.33    C    291.48    K    
67.50    F    19.72    C    292.87    K    
70.00    F    21.11    C    294.26    K    
72.50    F    22.50    C    295.65    K    
75.00    F    23.89    C    297.04    K    
77.50    F    25.28    C    298.43    K    
80.00    F    26.67    C    299.82    K    
82.50    F    28.06    C    301.21    K    
85.00    F    29.44    C    302.59    K    
87.50    F    30.83    C    303.98    K    
90.00    F    32.22    C    305.37    K    
92.50    F    33.61    C    306.76    K    
95.00    F    35.00    C    308.15    K    
97.50    F    36.39    C    309.54    K    
100.00    F    37.78    C    310.93    K    
102.50    F    39.17    C    312.32    K    
105.00    F    40.56    C    313.71    K    
107.50    F    41.94    C    315.09    K    
110.00    F    43.33    C    316.48    K    
112.50    F    44.72    C    317.87    K    
115.00    F    46.11    C    319.26    K    
117.50    F    47.50    C    320.65    K    
120.00    F    48.89    C    322.04    K    
122.50    F    50.28    C    323.43    K    
125.00    F    51.67    C    324.82    K    
127.50    F    53.06    C    326.21    K    
130.00    F    54.44    C    327.59    K    
132.50    F    55.83    C    328.98    K    
135.00    F    57.22    C    330.37    K    
137.50    F    58.61    C    331.76    K    
140.00    F    60.00    C    333.15    K    
142.50    F    61.39    C    334.54    K    
145.00    F    62.78    C    335.93    K    
147.50    F    64.17    C    337.32    K    
150.00    F    65.56    C    338.71    K    
152.50    F    66.94    C    340.09    K    
155.00    F    68.33    C    341.48    K    
157.50    F    69.72    C    342.87    K    
160.00    F    71.11    C    344.26    K    
162.50    F    72.50    C    345.65    K    
165.00    F    73.89    C    347.04    K    
167.50    F    75.28    C    348.43    K    
170.00    F    76.67    C    349.82    K    
172.50    F    78.06    C    351.21    K    
175.00    F    79.44    C    352.59    K    
177.50    F    80.83    C    353.98    K    
180.00    F    82.22    C    355.37    K    
182.50    F    83.61    C    356.76    K    
185.00    F    85.00    C    358.15    K    
187.50    F    86.39    C    359.54    K    
190.00    F    87.78    C    360.93    K    
192.50    F    89.17    C    362.32    K    
195.00    F    90.56    C    363.71    K    
197.50    F    91.94    C    365.09    K    
200.00    F    93.33    C    366.48    K    
202.50    F    94.72    C    367.87    K    
205.00    F    96.11    C    369.26    K    
207.50    F    97.50    C    370.65    K    
210.00    F    98.89    C    372.04    K    

All tests passed!
]0;zs35@gold04: ~/Desktop/214/projects/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/09/java[00m$ java TempTester
Enter temp info: 
0 K
Enter temp info: 
212 F
Enter the step value: 
20.0
-459.67    F    -273.15    C    0.00    K    
-423.67    F    -253.15    C    20.00    K    
-387.67    F    -233.15    C    40.00    K    
-351.67    F    -213.15    C    60.00    K    
-315.67    F    -193.15    C    80.00    K    
-279.67    F    -173.15    C    100.00    K    
-243.67    F    -153.15    C    120.00    K    
-207.67    F    -133.15    C    140.00    K    
-171.67    F    -113.15    C    160.00    K    
-135.67    F    -93.15    C    180.00    K    
-99.67    F    -73.15    C    200.00    K    
-63.67    F    -53.15    C    220.00    K    
-27.67    F    -33.15    C    240.00    K    
8.33    F    -13.15    C    260.00    K    
44.33    F    6.85    C    280.00    K    
80.33    F    26.85    C    300.00    K    
116.33    F    46.85    C    320.00    K    
152.33    F    66.85    C    340.00    K    
188.33    F    86.85    C    360.00    K    

All tests passed!
]0;zs35@gold04: ~/Desktop/214/projects/09/java[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/09/java[00m$ exit
exit

Script done on 2023-03-20 14:15:35-04:00 [COMMAND_EXIT_CODE="0"]
