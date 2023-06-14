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

end Temp_Package;