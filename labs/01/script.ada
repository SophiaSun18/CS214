Script started on 2023-01-09 20:14:16-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="107" LINES="57"]
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ at    catr    circle_area.adb
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Jan 09, 2023
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;  -- import necessary libraries

procedure circle_area is

   radius, area : float;   -- define two variables: radius and area

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is  -- define the main function
      PI : constant := 3.1415927;  -- define the value of PI used in calculation
   begin
      return PI * r ** 2;  -- calculate and return the area
   end circleArea;

begin                           
   New_Line;  -- start the program with a new line
   Put_Line("To compute the area of a circle,");  -- display the message
   Put("enter its radius: ");
   Get(radius); -- get a user input of radius

   area := circleArea(radius); -- call the funtion and calculate the area

   New_Line;
   Put("The circle's area is "); -- display the result directly
   Put(area);
   New_Line; New_Line; 

   Put("The circle's area is "); -- display the result with 15 decimal places
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end circle_area;
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ gnart  tmake circle_area
x86_64-linux-gnu-gcc-7 -c circle_area.adb
x86_64-linux-gnu-gnatbind-7 -x circle_area.ali
x86_64-linux-gnu-gnatlink-7 circle_area.ali
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ gnatmake circle_area          ircle_area.adb
gnatmake: "circle_area" up to date.
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 1

The circle's area is  3.14159E+00

The circle's area is 3.141592741012573

]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2

The circle's area is  1.25664E+01

The circle's area is 12.566370964050293

]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2.5

The circle's area is  1.96350E+01

The circle's area is 19.634954452514648

]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 4.99999

The circle's area is  7.85395E+01

The circle's area is 78.539505004882813

]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ exit
exit

Script done on 2023-01-09 20:15:31-05:00 [COMMAND_EXIT_CODE="0"]
