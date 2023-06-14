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
