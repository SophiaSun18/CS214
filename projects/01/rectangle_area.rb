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
