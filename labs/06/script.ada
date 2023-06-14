Script started on 2023-02-17 14:48:33-05:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="80" LINES="24"]
]0;zs35@gold01: ~/Desktop/214/labs/06[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/06[00m$ cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Feb 17, 2023
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is
   -- string length = 40
   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure split(The_String: in String; Position: in integer; Part1: out String; Part2: out String) is
   begin
      Move(The_String(The_String'First .. Pos - 1), Part1);
      Move(The_String(Pos .. The_String'Last), Part2);
   end split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;zs35@gold01: ~/Desktop/214/labs/06[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/06[00m$ gnatmake splita .adb
gnatmake: "split" up to date.
]0;zs35@gold01: ~/Desktop/214/labs/06[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
]0;zs35@gold01: ~/Desktop/214/labs/06[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
]0;zs35@gold01: ~/Desktop/214/labs/06[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;zs35@gold01: ~/Desktop/214/labs/06[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/06[00m$ exit
exit

Script done on 2023-02-17 14:49:00-05:00 [COMMAND_EXIT_CODE="0"]
