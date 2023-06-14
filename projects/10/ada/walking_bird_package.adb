-- walking_bird_package.adb gives WalkingBird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Walking_Bird_Package is

    ----------------------------------------------------
    -- A WalkingBird's Movement                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: a walking bird's movement ("walked past").        -
    ----------------------------------------------------
    function Movement(A_Bird : in Walking_Bird_Type) return String is
    begin
        return "walked past";
    end Movement;

end Walking_Bird_Package;

