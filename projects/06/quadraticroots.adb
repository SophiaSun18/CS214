-- quadraticroots.adb computes the roots of a quadratic equation.
--
-- Input: a, b, c, the three factors that are floats.
-- Output: root1, root2, the two roots that are floats.
--
-- Student Name: ZeAi Sun
-- Date: Feb 20, 2023
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;

procedure quadraticRoots is

   a, b, c, arg, root1, root2 : integer;
   Chars_read   : Natural;

   ------------------------------------------------
   -- quadraticRoots() computes the roots of a quadratic equation.          
   -- Receive: a, b, c, the three factors that are floats.     
   -- Passback: root1, root2, the two roots that are floats.
   ------------------------------------------------
   procedure quadraticRoots(A: in integer; B: in integer; C: in integer; root1: out integer; root2: out integer) is
   begin
      arg := B * B - 4 * A * C;
      if (A /= 0) and (arg >= 0) then
        root1 := Integer(Float(-1 * B) + sqrt(Float(arg)) / Float(2 * A));
        root2 := Integer(Float(-1 * B) - sqrt(Float(arg)) / Float(2 * A));
      else
        root1 := 0;
        root2 := 0;
      end if;
   end quadraticRoots;

begin                                           -- Prompt for input
   Put("Enter the value of a: ");
   Get(a);
   Put("Enter the value of b: ");
   Get(b);
   Put("Enter the value of c: ");
   Get(c);

   quadraticRoots(a, b, c, root1, root2);

   Put("The first root is");
   New_Line;
   Put(root1);
   New_Line;
   Put("and the second root is");
   New_Line;
   Put(root2);

end quadraticRoots;