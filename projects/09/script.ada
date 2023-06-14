Script started on 2023-03-23 19:34:07-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="98" LINES="68"]
]0;zs35@gold01: ~/Desktop/214/projects/09/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/09/ada[00m$ cat temp_paca kage.ads
-- temp_package.ads declares the Temperature type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 20, 2023
--------------------------------------------------------------

package Temp_Package is

    type Temperature is private;
    
    ----------------------------------------------
    -- Init initializes a Temperature variable.            
    ----------------------------------------------

    procedure Init(Temp: out Temperature; degree: in Long_Float; scale: in Character);

    ----------------------------------------------
    -- Test tests if the given degree and scale constitute a valid temperature.
    ----------------------------------------------

    procedure test(degree: in Long_Float; scale: in Character);

    ----------------------------------------------
    -- getDegree retrieves Temp.MyDegree.
    ----------------------------------------------

    function getDegree(Temp: in Temperature) return Long_Float;

    ----------------------------------------------
    -- getScale retrieves Temp.MyScale.
    ----------------------------------------------

    function getScale(Temp: in Temperature) return Character;

    ----------------------------------------------
    -- convertF converts to Temperature in F.
    ----------------------------------------------

    function convertF (Temp: in out Temperature) return Temperature;

    ----------------------------------------------
    -- convertC converts to Temperature in C.
    ----------------------------------------------

    function convertC (Temp: in out Temperature) return Temperature;
    
    ----------------------------------------------
    -- convertK converts to Temperature in K.
    ----------------------------------------------

    function convertK (Temp: in out Temperature) return Temperature;

    ----------------------------------------------
    -- InputOp creates a Temperature from a input string.
    ----------------------------------------------

    function InputOp (Temp: in out Temperature) return Temperature;

    ----------------------------------------------
    -- OutputOp prints out a Temperature as a string.
    ----------------------------------------------

    procedure OutputOp (Temp: in Temperature);

    ----------------------------------------------
    -- raise the degree of a temperature by the given input 
    ----------------------------------------------

    function raiseT (Temp: in out Temperature; factor: in Long_Float) return Temperature;

    ----------------------------------------------
    -- lower the degree of a temperature by the given input
    ----------------------------------------------

    function lowerT (Temp: in out Temperature; factor: in Long_Float) return Temperature;

    ----------------------------------------------
    -- check if two Temperatures are equal
    ----------------------------------------------

    function equals (Temp1: in Temperature; Temp2: in Temperature) return Boolean;

    ----------------------------------------------
    -- check if one Temperature is less than the other
    ----------------------------------------------

    function lessThan (Temp1: in Temperature; Temp2: in out Temperature) return Boolean;

    private

    type Temperature is 
        record
            MyDegree : Long_Float;
            MyScale : Character;
        end record;

end Temp_Package;]0;zs35@gold01: ~/Desktop/214/projects/09/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/09/ada[00m$ cat temp_package.adb
-- temp_package.adb defines operations for the Temperature type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 20, 2023
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings.Maps; use Ada.Strings.Maps;

package body Temp_Package is

    My_Exception : exception;

    ----------------------------------------------
    -- Init initializes a Temperature variable.            
    ----------------------------------------------

    procedure Init(Temp: out Temperature; degree: in Long_Float; scale: in Character) is
    begin
        begin
            test(degree, scale);
            Temp.MyDegree := degree;
            Temp.MyScale := scale;
        exception
            when My_Exception =>
                Put_Line("Invalid Argument.");
        end;
    end Init;

    ----------------------------------------------
    -- Test tests if the given degree and scale constitute a valid temperature.
    ----------------------------------------------

    procedure test(degree: in Long_Float; scale: in Character) is
    begin
        if (scale = 'f' or scale = 'F') then
            if (degree < -459.67) then
                raise My_Exception with "Invalid Degree.";
            end if;
        elsif (scale = 'c' or scale = 'C') then
            if (degree < -273.15) then
                raise My_Exception with "Invalid Degree.";
            end if;
        elsif (scale = 'k' or scale = 'K') then
            if (degree < 0.0) then
                raise My_Exception with "Invalid Degree.";
            end if;
        else
            raise My_Exception with "Invalid Scales.";
        end if;
    end test;

    ----------------------------------------------
    -- getDegree retrieves Temp.MyDegree.
    ----------------------------------------------

    function getDegree(Temp: in Temperature) return Long_Float is
    begin
        return Temp.MyDegree;
    end getDegree;

    ----------------------------------------------
    -- getScale retrieves Temp.MyScale.
    ----------------------------------------------

    function getScale(Temp: in Temperature) return Character is
    begin
        return Temp.MyScale;
    end getScale;

    ----------------------------------------------
    -- convertF converts to Temperature in F.
    ----------------------------------------------

    function convertF (Temp: in out Temperature) return Temperature is
    begin
        if (getScale(Temp) = 'c' or getScale(Temp) = 'C') then
            Init(Temp, getDegree(Temp) * 9.0 / 5.0 + 32.0, 'F');
        elsif (getScale(Temp) = 'k' or getScale(Temp) = 'K') then
            Init(Temp, (getDegree(Temp) - 273.15) * 9.0 / 5.0 + 32.0, 'F');  
        end if;
        return Temp;
    end convertF;

    ----------------------------------------------
    -- convertC converts to Temperature in C.
    ----------------------------------------------

    function convertC (Temp: in out Temperature) return Temperature is
    begin
        if (getScale(Temp) = 'f' or getScale(Temp) = 'F') then
            Init(Temp, (getDegree(Temp) - 32.0) * 5.0 / 9.0, 'C');
        elsif (getScale(Temp) = 'k' or getScale(Temp) = 'K') then
            Init(Temp, getDegree(Temp) - 273.15, 'C');  
        end if;
        return Temp;
    end convertC;

    ----------------------------------------------
    -- convertK converts to Temperature in K.
    ----------------------------------------------

    function convertK (Temp: in out Temperature) return Temperature is
    begin
        if (getScale(Temp) = 'c' or getScale(Temp) = 'C') then
            Init(Temp, getDegree(Temp) + 273.15, 'K');
        elsif (getScale(Temp) = 'f' or getScale(Temp) = 'F') then
            Init(Temp, (getDegree(Temp) - 32.0) / 1.8 + 273.15, 'K');  
        end if;
        return Temp;
    end convertK;

    ----------------------------------------------
    -- InputOp creates a Temperature from a input string.
    ----------------------------------------------

    function InputOp (Temp: in out Temperature) return Temperature is

        t,d : String(1..10);
        degree : Long_Float;
        scale : Character;
        string_read : Natural;

    begin
        Put_Line("Enter temp info: ");
        Get_Line(t, string_read);

        for i in t'Range loop
            if t.element(i) /= ' ' then
                d := d & t(i);
            else
                exit;
            end if;
        end loop;

        degree := Long_Float'Value(d);
        scale := t(t'Length);

        Init(Temp, degree, scale);
        return Temp;
    end InputOp;

    ----------------------------------------------
    -- OutputOp prints out a Temperature as a string.
    ----------------------------------------------

    procedure OutputOp (Temp: in Temperature) is
    begin
        Put (Long_Float'Image(getDegree(Temp)));
        Put ("    ");
        Put (getScale(Temp));
        Put ("    ");
    end OutputOp;

    ----------------------------------------------
    -- raise the degree of a temperature by the given input 
    ----------------------------------------------

    function raiseT (Temp: in out Temperature; factor: in Long_Float) return Temperature is
    begin
        Init(Temp, getDegree(Temp) + factor, getScale(Temp));
        return Temp;
    end raiseT;

    ----------------------------------------------
    -- lower the degree of a temperature by the given input
    ----------------------------------------------

    function lowerT (Temp: in out Temperature; factor: in Long_Float) return Temperature is
    begin
        begin
            test(getDegree(Temp) - factor, getScale(Temp));
            Init(Temp, getDegree(Temp) - factor, getScale(Temp));
            return Temp;
        exception
            when My_Exception =>
                Put_Line("Invalid Argument!");
        end;
    end lowerT;

    ----------------------------------------------
    -- check if two Temperatures are equal
    ----------------------------------------------

    function equals (Temp1: in Temperature; Temp2: in Temperature) return Boolean is
    begin
        return getDegree(Temp1) = getDegree(Temp2)
            and getScale(Temp1) = getScale(Temp2);
    end equals;

    ----------------------------------------------
    -- check if one Temperature is less than the other
    ----------------------------------------------

    function lessThan (Temp1: in Temperature; Temp2: in out Temperature) return Boolean is
    begin
        if (getScale(Temp1) = 'F' or getScale(Temp1) = 'f') then
            Temp2 := convertF(Temp2);
        elsif (getScale(Temp1) = 'C' or getScale(Temp1) = 'c') then
            Temp2 := convertC(Temp2);
        else
            Temp2 := convertK(Temp2);
        end if;

        return getDegree(Temp1) < getDegree(Temp2);
    end;

end Temp_Package;]0;zs35@gold01: ~/Desktop/214/projects/09/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/09/ada[00m$ cat temp_tea ster.s adb
-- temp_tester.adb "test-drives" the Temperature type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: ZeAi Sun
-- Date: Mar 20, 2023
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Temp_Package; use Temp_Package;

procedure temp_tester is 

  baseTemp, limitTemp : Temp_Package.Temperature;
  stepValue : Long_Float;
  value_read : Natural;

begin

  baseTemp := InputOp(baseTemp);
  limitTemp := InputOp(limitTemp);
  Put_Line("Enter the step value: ");
  Get_Line(stepValue, value_read);

  while lessThan(baseTemp, limitTemp) = True loop
    OutputOp(convertF(baseTemp));
    OutputOp(convertC(baseTemp));
    OutputOp(convertK(baseTemp));
    baseTemp := raiseT(baseTemp, stepValue);
  end loop;

  Put("All tests passed!"); New_line;

end temp_tester;]0;zs35@gold01: ~/Desktop/214/projects/09/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/09/ada[00m$ cat sideNote.txt
This program follows the basic structure of java and ruby versions.
Many details not working, mostly type errors and problem with string slicing.]0;zs35@gold01: ~/Desktop/214/projects/09/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/09/ada[00m$ exit
exit

Script done on 2023-03-23 19:35:36-04:00 [COMMAND_EXIT_CODE="0"]
