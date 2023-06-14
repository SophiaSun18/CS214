Script started on 2023-03-13 20:14:00-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="93" LINES="68"]
]0;zs35@gold04: ~/Desktop/214/projects/08[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/08[00m$ cat name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 13, 2023
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;

  type Name is
    record
      MyFirst : String(1..NAME_SIZE);
      MyMiddle : String(1..NAME_SIZE);
      MyLast : String(1..NAME_SIZE);
    end record;

  aName : Name ;
  i : String(1..NAME_SIZE);

  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init (TheName : out Name; First, Middle, Last : in String) is begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is begin
    return TheName.MyFirst;
  end getFirst;

  function getMiddle(TheName : in Name) return String is begin
    return TheName.MyMiddle;
  end getMiddle;  

  function getLast(TheName : in Name) return String is begin
    return TheName.MyLast;
  end getLast;  

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is begin
    return TheName.MyFirst & ' ' & TheName.MyMiddle & ' ' & TheName.MyLast;
  end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  procedure Put(TheName : in Name) is begin
    Put_Line(getFullName(TheName));
  end Put;

  -----------------------------------------------
  -- setFirst(Name) changes Name.myFirst        -
  -- Receive: theName, a Name. aFirst, a String.-
  -- PRE: theName has been initialized.         -
  -----------------------------------------------

  procedure setFirst(TheName : in out Name; aFirst : in String) is begin
    TheName.MyFirst := aFirst;
  end setFirst;

  procedure setMiddle(TheName : in out Name; aMiddle : in String) is begin
    TheName.MyMiddle := aMiddle;
  end setMiddle;

  procedure setLast(TheName : in out Name; aLast : in String) is begin
    TheName.MyLast := aLast;
  end setLast;

  ----------------------------------------------
  -- lfmi(Name) returns the name in lfmi format-
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: last + first + middleInitial      -
  ----------------------------------------------

  function lfmi(TheName : in Name) return String is begin
    return TheName.MyLast & ' ' & TheName.MyFirst & ", " & TheName.MyMiddle(0) & '.';
  end lfmi;

  ----------------------------------------------
  -- read(Name) reads value from the keyboard. -
  -- Receive: theName, a Name.                 -
  ----------------------------------------------

  procedure read(TheName : in out Name) is begin
    Get(i);
    TheName.MyFirst := i;
    Get(i);
    TheName.MyMiddle := i;
    Get(i);
    TheName.MyLast := i;
  end read;

begin
    Init(aName, "John    ", "Paul    ", "Jones   ");

    pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
    pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
    pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
    pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                  "getFullName() failed");
    Put(aName); New_line;

    setFirst(aName, "Alice   ");
    setMiddle(aName, "Mary    ");
    setLast(aName, "Sue     ");

    pragma Assert( getFirst(aName) = "Alice   ", "setFirst() failed");
    pragma Assert( getMiddle(aName) = "Mary    ", "setMiddle() failed");
    pragma Assert( getLast(aName) = "Sue     ", "setLast() failed");
    pragma Assert( lfmi(aName) = "Sue, Alice M.", "lfmi() failed");
    Put(aName); New_line;

    read(aName);
    Put(aName); New_line;
    Put("All tests passed!"); New_line;

end name_tester;
]0;zs35@gold04: ~/Desktop/214/projects/08[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/08[00m$ gantmane       natmae ke name_tester.adb
gnatmake: "name_tester" up to date.
]0;zs35@gold04: ~/Desktop/214/projects/08[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/08[00m$ ./name_tester
John     Paul     Jones   

Alice    Mary     Sue     

ZeAi    
Sophia  
Sun     
ZeAi     Sophia   Sun     

All tests passed!
]0;zs35@gold04: ~/Desktop/214/projects/08[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/08[00m$ exit
exit

Script done on 2023-03-13 20:14:30-04:00 [COMMAND_EXIT_CODE="0"]
