Script started on 2023-01-09 20:47:56-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="100" LINES="56"]
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ cat circle_area.rb
#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Jan 09, 2023
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927  # define the value of PI
def circleArea(r)  # define the function
    PI * r ** 2 
end

if __FILE__ == $0  # the main program
   puts "To compute the area of a circle,"  # display the message
   print " enter its radius: "
   radius = gets.chomp.to_f  # get the radius input from the user
   print "The circle's area is: "
   puts circleArea(radius)  # call the function and display the result
end
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2.5
The circle's area is: 19.634954375
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104418
]0;zs35@gold02: ~/Desktop/214/labs/01[01;32mzs35@gold02[00m:[01;34m~/Desktop/214/labs/01[00m$ exit
exit

Script done on 2023-01-09 20:48:40-05:00 [COMMAND_EXIT_CODE="0"]
