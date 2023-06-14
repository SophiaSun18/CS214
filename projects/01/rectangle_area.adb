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
