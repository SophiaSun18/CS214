Script started on 2023-02-20 14:23:22-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="105" LINES="42"]
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ cat quadratic  Roots.rb
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

main]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ruby quadraticRoots.rb
Enter the value of a: 1
Enter the value of b: 5
Enter the value of c: 6
The first root is: -2.0
and the second root is: -3.0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ruby quadraticRoots.rb
Enter the value of a: 0
Enter the value of b: 5
Enter the value of c: 6
The first root is: 0
and the second root is: 0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ruby quadraticRoots.rb
Enter the value of a: 1
Enter the value of b: 1
Enter the value of c: 5
The first root is: 0
and the second root is: 0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ ruby quadraticRoots.rb
Enter the value of a: 1
Enter the value of b: 2
Enter the value of c: -15
The first root is: 3.0
and the second root is: -5.0
]0;zs35@gold06: ~/Desktop/214/projects/06[01;32mzs35@gold06[00m:[01;34m~/Desktop/214/projects/06[00m$ exit
exit

Script done on 2023-02-20 14:23:51-05:00 [COMMAND_EXIT_CODE="0"]
