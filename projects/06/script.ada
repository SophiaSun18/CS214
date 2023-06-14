Script started on 2023-02-20 15:31:12-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="105" LINES="42"]
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ cat quadraticroots.adb
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

end quadraticRoots;]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ gnatmake quadraticroots.adb
gnatmake: "quadraticroots" up to date.
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ gnatmake quadraticroots.adb[K./quadratictoo   roots
Enter the value of a: 1
Enter the value of b: 5
Enter the value of c: 6
The first root is
         -5
and the second root is
         -6
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ./quadraticroots
Enter the value of a: 
0
Enter the value of b: 5
Enter the value of c: 6
The first root is
          0
and the second root is
          0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ./quadraticroots
Enter the value of a: 1
Enter the value of b: 1
Enter the value of c: 5
The first root is
          0
and the second root is
          0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ./quadraticroots
Enter the value of a: 1
Enter the value of b: 2
Enter the value of c: 15
The first root is
          0
and the second root is
          0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ./quadraticroots
Enter the value of a: 1
Enter the value of b: 2
Enter the value of c: -12 5
The first root is
          2
and the second root is
         -6
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ exit
exit

Script done on 2023-02-20 15:32:05-05:00 [COMMAND_EXIT_CODE="0"]
