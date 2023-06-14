#! /usr/bin/ruby
# Factorial.rb computes the factorial of the input.
#
# Student Name: ZeAi Sun
#
# Input: The number n
# Output: The value of n!

if __FILE__ == $0
   print "To compute n!, enter n: "
   n = gets.to_i
   result = 1;
   
   for i in 1..n do
      result *= i;
   end

   print("The value of n! is: #{result} \n")
end

