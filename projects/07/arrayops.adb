-- arrayops.adb contains a subprogram that fills an array with values
-- and a subprogram that displays the values in the array.
--
-- Student Name: ZeAi Sun
-- Date: Feb 28, 2023
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;

procedure arrayOps is

   type Vector is array ( Positive range <> ) of Float;

   size : Integer := 0;
   anArray : Vector(0..size);
   n : Float;

   ------------------------------------------------
   -- readArray() fills an already-allocated array with values from the keyboard.
   -- Receive: array anArray, int itsSize.   
   ------------------------------------------------
   procedure readArray(itsSize: integer; anArray: Vector) is
   begin
      for i in 0..itsSize loop
         Put("Enter the next value: ");
         Get(anArray(i));
      end loop;
   end readArray;

   ------------------------------------------------
   -- printArray() displays the values in an array on the screen, separated by newlines.
   -- Receive: array anArray, int itsSize.
   ------------------------------------------------
   procedure printArray(itsSize: integer; anArray: Vector) is
   begin
      for i in 0..itsSize loop
         Put(anArray(i));
      end loop;
   end printArray;

begin                                           -- Prompt for input
   Put("Enter the size of the array: ");
   Get(size);

   readArray(anArray, size);
   printArray(anArray, size);

end arrayOps;