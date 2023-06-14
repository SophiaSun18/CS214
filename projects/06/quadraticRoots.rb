# quadraticRoots.rb computes the roots of a quadratic equation.
#
# Input: a, b, c, the three factors that are ints.
# Output: root1, root2, the two roots that are ints.
#
# Student Name: ZeAi Sun
# Date: Feb 19, 2023
#################################################################

# quadraticRoots() computes the roots of a quadratic equation.
# Receive: a, b, c, the three factors.
# Return: root1, root2, the two roots.
######################################################

def quadraticRoots(a, b, c)
    arg = b * b - 4 * a * c             # compute the value of b^2-4ac.
    if (a != 0) and (arg >= 0)          # check if a is 0 or b^2-4ac is greater than 0.
        root1 = (-1 * b + Math.sqrt(arg)) / (2 * a);        # if so, compute the roots.
        root2 = (-1 * b - Math.sqrt(arg)) / (2 * a);
    else
        root1 = 0                                           # if not, set the roots to be 0.
        root2 = 0
    end
    result = [root1, root2]                                 # return a list contained the roots.
end

def main
  print "Enter the value of a: "; 
  valueA = gets.to_i
  print "Enter the value of b: "; 
  valueB = gets.to_i
  print "Enter the value of c: "; 
  valueC = gets.to_i
  result = quadraticRoots(valueA, valueB, valueC)
  puts "The first root is: " << result[0].to_s              # print the first root.
  puts "and the second root is: " << result[1].to_s         # print the second root.
end

main