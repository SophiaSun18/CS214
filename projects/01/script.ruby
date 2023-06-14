Script started on 2023-01-12 20:32:19-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="133" LINES="67"]
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ cat rectanl gle_area.rb
#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its width and height
# 
# Input: the width and height of a rectangle
# Precondition: the width and height are not negative
# Output: the area of the rectangle.
#
# Author: ZeAi Sun
# Date: Jan 12, 2023
###############################################################

# function rectangleArea returns a rectangle's area, given its width and height
# Parameters: w and h, both numbers
# Precondition: w > 0, h > 0
# Returns: the area of a rectangle whose width is w and height is h.
def rectangleArea(w, h)  # define the function
    w * h
end

if __FILE__ == $0  # the main program
   puts "To compute the area of a rectangle,"  # display the message
   print " enter its width: "
   width = gets.chomp.to_f  # get the width input from the user
   print " enter its height: "
   height = gets.chomp.to_f  # get the height input from the user
   print "The circle's area is: "
   puts rectangleArea(width, height)  # call the function and display the result
end
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ cat rectangle_area.rbexit[Kclojure -m rectangle_areaat src/rectangle_area.clj[1Plojure -m rectangle_areaexit[Kcat rectangle_area.rb[Kruby rectangle_arae  ea.rb
To compute the area of a rectangle,
 enter its width: 3
 enter its height: 4
The circle's area is: 12.0
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 6
 enter its height: 9
The circle's area is: 54.0
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 7.5
 enter its height: 9.3
The circle's area is: 69.75
]0;zs35@gold28: ~/Desktop/214/projects/01[01;32mzs35@gold28[00m:[01;34m~/Desktop/214/projects/01[00m$ exit
exit

Script done on 2023-01-12 20:32:56-05:00 [COMMAND_EXIT_CODE="0"]
