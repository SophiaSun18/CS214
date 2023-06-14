Script started on 2023-03-27 20:18:06-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="67"]
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat bird.[ac    _package.adb
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is

    ----------------------------------------------------
    -- initialization                                  -
    -- Receive: A_Bird, a Bird_Type;                   -
    --          Name, a String                         -
    -- Return: a Bird_Type in which My_Name = Name.    -
    ----------------------------------------------------
    procedure Init(A_Bird : out Bird_Type; Name : in String) is
    begin
        A_Bird.My_Name := Name;
    end Init;

    ----------------------------------------------------
    -- Name accessor                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: A_Bird.My_Name.                         -
    ----------------------------------------------------
    function Name(A_Bird : in Bird_Type) return String is
    begin
        return A_Bird.My_Name;
    end Name;

    ----------------------------------------------------
    -- A Bird's Call                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: a default bird-call ("Squawk!").        -
    ----------------------------------------------------
    function Call(A_Bird : in Bird_Type) return String is
    begin
        return "Squawwwwwwk!";
    end Call;

    ----------------------------------------------------
    -- Determine type of a Bird (for derived types)    -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: "Bird".                                 -
    ----------------------------------------------------
    function Type_Name(A_Bird : in Bird_Type) return String is
    begin
        return "Bird";
    end Type_Name;

    ----------------------------------------------------
    -- Output a Bird                                   -
    -- Receive: A_Bird, a Bird or subclass of Bird.    -
    -- Output: Everything known about A_Bird           -
    ----------------------------------------------------
    procedure Put(A_Bird : in Bird_Type'Class) is
    begin
        Put( Name(A_Bird) );
        Put( ' ' );
        Put( Type_Name(A_Bird) );
        Put( " just ");
        Put( Movement(A_Bird) );
        Put( " and said " );
        Put( Call(A_Bird) );
    end Put; 

end Bird_Package;

]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat bird_package.adb s
-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

package Bird_Package is

    type Bird_Type is abstract tagged private;

    ----------------------------------------------------
    -- initialization                                  -
    -- Receive: A_Bird, a Bird_Type;                   -
    --          Name, a String                         -
    -- Return: a Bird_Type whose My_Name = Name.       -
    ----------------------------------------------------
    procedure Init(A_Bird : out Bird_Type; Name : in String);

    ----------------------------------------------------
    -- Name accessor                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: A_Bird.My_Name.                         -
    ----------------------------------------------------
    function  Name(A_Bird : in Bird_Type) return String;

    ----------------------------------------------------
    -- A Bird's Call                                   -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: a default bird-call ("Squawk!").        -
    ----------------------------------------------------
    function  Call(A_Bird : in Bird_Type) return String;

    ----------------------------------------------------
    -- A Bird's Movement                               -
    -- Receive: A_Bird, a Bird_Type.                   -
    ----------------------------------------------------
    function Movement(A_Bird : in Bird_Type) return String is abstract;

    ----------------------------------------------------
    -- Determine type of a Bird (for derived types)    -
    -- Receive: A_Bird, a Bird_Type.                   -
    -- Return: "Bird".                                 -
    ----------------------------------------------------
    function  Type_Name(A_Bird : in Bird_Type) return String;

    ----------------------------------------------------
    -- Output a Bird                                   -
    -- Receive: A_Bird, a Bird or subclass of Bird.    -
    -- Output: Everything known about A_Bird           -
    ----------------------------------------------------
    procedure Put(A_Bird : in Bird_Type'Class);

    private
        type Bird_Type is
            abstract tagged record
                My_Name : String(1..6);
            end record;

end Bird_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat flying  _bird_package.adb
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

]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat flying_bird_package.adb s
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
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat walking_bird_package.adb
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

]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat walking_bird_package.adb s
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
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat duck_package.adb
-- duck_package.adb gives Duck-related definitions
--  by over-riding FlyingBird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

    ----------------------------------------------------
    -- A Duck's Call (Over-rides Bird.Call())          -
    -- Receive: A_Duck, a Duck_Type.                   -
    -- Return: "Quack!"                                -
    ----------------------------------------------------
    function Call(A_Duck : in Duck_Type) return String is
    begin
        return "Quack!";
    end Call;

    ------------------------------------------------------------
    -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
    -- Receive: A_Duck, a Duck_Type.                          -
    -- Return: "Duck".                                        -
    -----------------------------------------------------------
    function Type_Name(A_Duck : in Duck_Type) return String is
    begin
        return "Duck";
    end Type_Name;

end Duck_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat duck_package.adb s
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from FlyingBird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Duck_Package is

    type Duck_Type is new Flying_Bird_Type with private;

    ----------------------------------------------------
    -- A Duck's Call (Over-rides Bird.Call())          -
    -- Receive: A_Duck, a Duck_Type.                   -
    -- Return: "Quack!"                                -
    ----------------------------------------------------
    function  Call(A_Duck : in Duck_Type) return String;

    ------------------------------------------------------------
    -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
    -- Receive: A_Duck, a Duck_Type.                          -
    -- Return: "Duck".                                        -
    -----------------------------------------------------------
    function  Type_Name(A_Duck : in Duck_Type) return String;

    private
        type Duck_Type is new Flying_Bird_Type with
            record
                null;
            end record;

end Duck_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat goose_package.adb
-- goose_package.adb gives Goose-related definitions
--  by over-riding FlyingBird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

package body Goose_Package is

    ----------------------------------------------------
    -- A Goose's Call (Over-rides Bird.Call())         -
    -- Receive: A_Goose, a Goose_Type.                 -
    -- Return: "Honk!"                                 -
    ----------------------------------------------------

    function Call(A_Goose : in Goose_Type) return String is
    begin
        return "Honk!";
    end Call;

    -----------------------------------------------------
    -- Determine type of a Goose                        -
    -- (Over-rides Bird.Type_Name())                    -
    -- Receive: A_Goose, a Goose_Type.                  -
    -- Return: "Goose".                                 -
    -----------------------------------------------------

    function Type_Name(A_Goose : in Goose_Type) return String is
    begin
        return "Goose";
    end Type_Name;

end Goose_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat goose_package.adb s
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from FlyingBird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Goose_Package is

    type Goose_Type is new Flying_Bird_Type with private;

    ----------------------------------------------------
    -- A Goose's Call (Over-rides Bird.Call())         -
    -- Receive: A_Goose, a Goose.                      -
    -- Return: "Honk!"                                 -
    ----------------------------------------------------
    function  Call(A_Goose : in Goose_Type) return String;

    -----------------------------------------------------
    -- Determine type of a Goose                        -
    -- (Over-rides Bird.Type_Name())                    -
    -- Receive: A_Goose, a Goose.                       -
    -- Return: "Goose".                                 -
    -----------------------------------------------------
    function  Type_Name(A_Goose : in Goose_Type) return String;

private
    type Goose_Type is new Flying_Bird_Type with
        record
            null;
        end record;

end Goose_Package;]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat wo  owl_package.adb
-- owl_package.adb gives Owl-related definitions
--  by over-riding FlyingBird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is

    ----------------------------------------------------
    -- A Owl's Call (Over-rides Bird.Call())           -
    -- Receive: An_Owl, an Owl_Type.                   -
    -- Return: "Whoo!"                                 -
    ----------------------------------------------------

    function  Call(An_Owl : in Owl_Type) return String is
    begin
        return "Whoo!";
    end Call;

    -----------------------------------------------------
    -- Determine type of a Owl                          -
    -- (Over-rides Bird.Type_Name())                    -
    -- Receive: An_Owl, an Owl_Type.                    -
    -- Return: "Owl".                                   -
    -----------------------------------------------------
    function  Type_Name(An_Owl : in Owl_Type) return String is
    begin
        return "Owl";
    end Type_Name;

end Owl_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat owl_package.adb s
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from FlyingBird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Owl_Package is

    type Owl_Type is new Flying_Bird_Type with private;

    ----------------------------------------------------
    -- A Owl's Call (Over-rides Bird.Call())           -
    -- Receive: An_Owl, an Owl_Type.                   -
    -- Return: "Whoo!"                                 -
    ----------------------------------------------------
    function  Call(An_Owl : in Owl_Type) return String;

    -----------------------------------------------------
    -- Determine type of a Owl                          -
    -- (Over-rides Bird.Type_Name())                    -
    -- Receive: An_Owl, an Owl_Type.                    -
    -- Return: "Owl".                                   -
    -----------------------------------------------------
    function  Type_Name(An_Owl : in Owl_Type) return String;

private
    type Owl_Type  is new Flying_Bird_Type with
        record 
            null;
        end record;

end Owl_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat penguin_package.adb
-- penguin_package.adb gives Penguin-related definitions
--  by over-riding WalkingBird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_Package is

    ----------------------------------------------------
    -- A Penguin's Call (Over-rides Bird.Call())          -
    -- Receive: A_Penguin, a Penguin_Type.                   -
    -- Return: "Huh-huh-huh-huuuh!"                                -
    ----------------------------------------------------
    function Call(A_Penguin : in Penguin_Type) return String is
    begin
        return "Huh-huh-huh-huuuh!";
    end Call;

    ------------------------------------------------------------
    -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
    -- Receive: A_Penguin, a Penguin_Type.                          -
    -- Return: "Penguin".                                        -
    -----------------------------------------------------------
    function Type_Name(A_Penguin : in Penguin_Type) return String is
    begin
        return "Penguin";
    end Type_Name;

end Penguin_Package;

]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat penguin_package.adb s
-- penguin_package.ads gives Penguin-related declarations,
--
--  and derives Penguin from WalkingBird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;

package Penguin_Package is

    type Penguin_Type is new Walking_Bird_Type with private;

    ----------------------------------------------------
    -- A Penguin's Call (Over-rides Bird.Call())          -
    -- Receive: A_Penguin, a Penguin_Type.                   -
    -- Return: "Huh-huh-huh-huuuh!"                                -
    ----------------------------------------------------
    function Call(A_Penguin : in Penguin_Type) return String;

    ------------------------------------------------------------
    -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
    -- Receive: A_Penguin, a Penguin_Type.                          -
    -- Return: "Penguin".                                        -
    -----------------------------------------------------------
    function Type_Name(A_Penguin : in Penguin_Type) return String;

    private
        type Penguin_Type is new Walking_Bird_Type with
            record
                null;
            end record;

end Penguin_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat ostrich_package.adb
-- ostrich_package.adb gives Ostrich-related definitions
--  by over-riding WalkingBird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_Package is

    ----------------------------------------------------
    -- A Ostrich's Call (Over-rides Bird.Call())          -
    -- Receive: A_Ostrich, a Ostrich_Type.                   -
    -- Return: "Snork!"                                -
    ----------------------------------------------------
    function Call(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Snork!";
    end Call;

    ------------------------------------------------------------
    -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
    -- Receive: A_Ostrich, a Ostrich_Type.                          -
    -- Return: "Ostrich".                                        -
    -----------------------------------------------------------
    function Type_Name(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Ostrich";
    end Type_Name;

end Ostrich_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat ostrich_package.adb s
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
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat kiwi_package.adb
-- kiwi_package.adb gives Kiwi-related definitions
--  by over-riding WalkingBird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_Package is

    ----------------------------------------------------
    -- A Kiwi's Call (Over-rides Bird.Call())          -
    -- Receive: A_Kiwi, a Kiwi_Type.                   -
    -- Return: "Blablabla!"                                -
    ----------------------------------------------------
    function Call(A_Kiwi : in Kiwi_Type) return String is
    begin
        return "Blablabla!";
    end Call;

    ------------------------------------------------------------
    -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
    -- Receive: A_Kiwi, a Kiwi_Type.                          -
    -- Return: "Kiwi".                                        -
    -----------------------------------------------------------
    function Type_Name(A_Kiwi : in Kiwi_Type) return String is
    begin
        return "Kiwi";
    end Type_Name;

end Kiwi_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ 
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat kiwi_package.adb s
-- kiwi_package.ads gives Kiwi-related declarations,
--
--  and derives Kiwi from WalkingBird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;

package Kiwi_Package is

    type Kiwi_Type is new Walking_Bird_Type with private;

    ----------------------------------------------------
    -- A Kiwi's Call (Over-rides Bird.Call())          -
    -- Receive: A_Kiwi, a Kiwi_Type.                   -
    -- Return: "Blablabla!"                                -
    ----------------------------------------------------
    function Call(A_Kiwi : in Kiwi_Type) return String;

    ------------------------------------------------------------
    -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
    -- Receive: A_Kiwi, a Kiwi_Type.                          -
    -- Return: "Kiwi".                                        -
    -----------------------------------------------------------
    function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
    type Kiwi_Type is new Walking_Bird_Type with
        record
            null;
        end record;

end Kiwi_Package;
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ cat birds.adb
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: ZeAi Sun
-- Date: Mar 27, 2023
-----------------------------------------------------

with Bird_Package, 
      Flying_Bird_Package,
      Walking_Bird_Package,
      Duck_Package, 
      Goose_Package, 
      Owl_Package,
      Penguin_Package,
      Ostrich_Package,
      Kiwi_Package,
      Ada.Text_IO;
use Bird_Package,
      Flying_Bird_Package,
      Walking_Bird_Package,
      Duck_Package, 
      Goose_Package,
      Owl_Package,
      Penguin_Package,
      Ostrich_Package,
      Kiwi_Package,
      Ada.Text_IO;


procedure Birds is

 Bird1 : Duck_Type;       -- derived class 1
 Bird2 : Goose_Type;      -- derived class 2
 Bird3 : Owl_Type;        -- derived class 3
 Bird4 : Penguin_Type;    -- derived class 4
 Bird5 : Ostrich_Type;    -- derived class 5
 Bird6 : Kiwi_Type;       -- derived class 6

begin
   Put("\nWelcome to the Bird Park!\n"); New_Line;
   Init(Bird1, "Donald");
   Put(Bird1); New_Line;

   Init(Bird2, "Mother");
   Put(Bird2); New_Line;

   Init(Bird3, "Woodsy");
   Put(Bird3); New_Line;

   Init(Bird4, "Peter ");
   Put(Bird4); New_Line;

   Init(Bird5, "Orvile");
   Put(Bird5); New_Line;

   Init(Bird6, "Kathie");
   Put(Bird6); New_Line;

 New_Line;
end Birds;

]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ gnatmake birds.adb
x86_64-linux-gnu-gcc-7 -c birds.adb
x86_64-linux-gnu-gcc-7 -c penguin_package.adb
x86_64-linux-gnu-gnatbind-7 -x birds.ali
x86_64-linux-gnu-gnatlink-7 birds.ali
]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ ./birds
\nWelcome to the Bird Park!\n
Donald Duck just flew past and said Quack!
Mother Goose just flew past and said Honk!
Woodsy Owl just flew past and said Whoo!
Peter  Penguin just walked past and said Huh-huh-huh-huuuh!
Orvile Ostrich just walked past and said Snork!
Kathie Kiwi just walked past and said Blablabla!

]0;zs35@gold01: ~/Desktop/214/projects/10/ada[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ada[00m$ exit
exit

Script done on 2023-03-27 20:20:41-04:00 [COMMAND_EXIT_CODE="0"]
