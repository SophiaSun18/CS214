Script started on 2023-02-20 20:06:35-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="105" LINES="24"]
]0;zs35@gold24: ~/Desktop/214/labs/07[01;32mzs35@gold24[00m:[01;34m~/Desktop/214/labs/07[00m$ cat average/a  .adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Feb 20, 2023
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

   type Vector is array ( Positive range <>) of Float;

   array0 : Vector := (0.0, 0.0);
   array1 : Vector := (9.0, 8.0, 7.0, 6.0);

----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------

function sum(A: Vector) return Float is 
    Total : Float := 0.0; 
  begin 
    -- for I in A'Range 
    for I in A'First..A'Last
    loop 
      Total := Total + A(I); 
    end loop; 
    return Total; 
  end sum;
----------------------------------------------
-- average() computes the average value of an array  -
-- Receive: anArray, an array of numbers     -
-- Return: the average value of anArray. -
----------------------------------------------

function average(anArray: in Vector) return Float is
begin
   if anArray'Length <= 0 then
      return 0.0;
   else
      return sum(anArray) / Float(anArray'Length);
   end if;
end average;

begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;]0;zs35@gold24: ~/Desktop/214/labs/07[01;32mzs35@gold24[00m:[01;34m~/Desktop/214/labs/07[00m$ gnatmake average.adb
gnatmake: "average" up to date.
]0;zs35@gold24: ~/Desktop/214/labs/07[01;32mzs35@gold24[00m:[01;34m~/Desktop/214/labs/07[00m$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
]0;zs35@gold24: ~/Desktop/214/labs/07[01;32mzs35@gold24[00m:[01;34m~/Desktop/214/labs/07[00m$ exit
exit

Script done on 2023-02-20 20:06:48-05:00 [COMMAND_EXIT_CODE="0"]
