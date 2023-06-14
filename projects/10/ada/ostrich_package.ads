-- ostrich_package.ads gives Ostrich-related declarations,
--
--  and derives Ostrich from WalkingBird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;

package Ostrich_Package is

    type Ostrich_Type is new Walking_Bird_Type with private;

    ----------------------------------------------------
    -- A Ostrich's Call (Over-rides Bird.Call())          -
    -- Receive: A_Ostrich, a Ostrich_Type.                   -
    -- Return: "Snork!"                                -
    ----------------------------------------------------
    function Call(A_Ostrich : in Ostrich_Type) return String;

    ------------------------------------------------------------
    -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
    -- Receive: A_Ostrich, a Ostrich_Type.                          -
    -- Return: "Ostrich".                                        -
    -----------------------------------------------------------
    function Type_Name(A_Ostrich : in Ostrich_Type) return String;

    private
        type Ostrich_Type is new Walking_Bird_Type with
            record
                null;
            end record;

end Ostrich_Package;
