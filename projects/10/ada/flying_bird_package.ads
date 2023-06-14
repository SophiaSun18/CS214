-- flying_bird_package.ads gives FlyingBird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Flying_Bird_Package is

    type Flying_Bird_Type is new Bird_Type with private;

    ----------------------------------------------------
    -- A FlyingBird's Movement                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: a flying bird's movement ("flew past").        -
    ----------------------------------------------------
    function Movement(A_Bird : in Flying_Bird_Type) return String;

    private
        type Flying_Bird_Type is new Bird_Type with
            record
                null;
            end record;

end Flying_Bird_Package;
