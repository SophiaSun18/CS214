Script started on 2023-02-06 22:03:06-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="121" LINES="12"]
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ cat factorial.adb
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

]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ gnatmkae [K[K[K[Kake factorial.adb
gnatmake: "factorial" up to date.
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ ./factorial
To compute n!, enter n: 5
The value of n! is:
        120
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ ./factorial
To compute n!, enter n: 6
The value of n! is:
        720
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ ./factorial
To compute n!, enter n: 11
The value of n! is:
   39916800
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ exit
exit

Script done on 2023-02-06 22:03:27-05:00 [COMMAND_EXIT_CODE="0"]
