-- walking_bird_package.ads gives WalkingBird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Walking_Bird_Package is

    type Walking_Bird_Type is new Bird_Type with private;

    ----------------------------------------------------
    -- A WalkingBird's Movement                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: a walking bird's movement ("walked past").        -
    ----------------------------------------------------
    function Movement(A_Bird : in Walking_Bird_Type) return String;

    private
        type Walking_Bird_Type is new Bird_Type with
            record
                null;
            end record;

end Walking_Bird_Package;
