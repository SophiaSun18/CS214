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

end temp_tester;