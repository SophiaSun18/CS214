-- factorial.adb computes the factorial of the input.
--
-- Input: n, an integer
-- Output: the value of n!
--
-- Student Name: ZeAi Sun
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;

procedure factorial is

   n, result: Integer := 1;

begin                                           -- Prompt for input
   Put("To compute n!, enter n: ");
   Get(n);

   for i in 1..n loop
      result := result * i;
   end loop;

   Put_Line("The value of n! is:");
   Put(result);
   New_Line;

end factorial;

