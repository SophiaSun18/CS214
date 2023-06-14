Script started on 2023-01-12 19:51:48-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="67"]
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ cat rectangle.  e_area.adb
-- rectangle_area.adb computes the area of a rectangle.
--
-- Input: The width and height of the rectangle.
-- Precondition: The width and height are positive numbers.
-- Output: The area of the rectangle.
--
-- Author: ZeAi Sun
-- Date: Jan 12, 2023
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;  -- import necessary libraries

procedure rectangle_area is

   width, height, area : float;   -- define three variables: width, height and area

   -- function rectangleArea computes a rectangle's area, given its width and height
   -- Parameter: w and h, two floats
   -- Precondition: w >= 0.0, h >= 0.0
   -- Return: the area of the rectangle whose width is w and height is h
   ----------------------------------------------------
   function rectangleArea(w: in float; h: in float) return float is  -- define the main function
   begin
      return w * h;  -- calculate and return the area
   end rectangleArea;

begin                           
   New_Line;  -- start the program with a new line
   Put_Line("To compute the area of a rectangle,");  -- display the message
   Put("enter its width: ");
   Get(width); -- get a user input of width
   Put("enter its height: ");
   Get(height); -- get a user input of height

   area := rectangleArea(width, height); -- call the funtion and calculate the area

   New_Line;
   Put("The rectangle's area is "); -- display the result directly
   Put(area);
   New_Line; New_Line; 

   Put("The rectangle's area is "); -- display the result with 15 decimal places
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end rectangle_area;
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ gnatmake rectangle_area
gnatmake: "rectangle_area" up to date.
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its width: 3
enter its height: 4

The rectangle's area is  1.20000E+01

The rectangle's area is 12.000000000000000

]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its width: 6
enter its height: 9

The rectangle's area is  5.40000E+01

The rectangle's area is 54.000000000000000

]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its width: 7.5
enter its height: 9.3

The rectangle's area is  6.97500E+01

The rectangle's area is 69.750000000000000

]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ exit
exit

Script done on 2023-01-12 19:52:58-05:00 [COMMAND_EXIT_CODE="0"]
