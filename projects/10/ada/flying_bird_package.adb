-- flying_bird_package.adb gives FlyingBird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Flying_Bird_Package is

    ----------------------------------------------------
    -- A FlyingBird's Movement                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: a flying bird's movement ("flew past").        -
    ----------------------------------------------------
    function Movement(A_Bird : in Flying_Bird_Type) return String is
    begin
        return "flew past";
    end Movement;

end Flying_Bird_Package;

