Script started on 2023-02-06 22:07:13-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="121" LINES="12"]
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ cat Factorial.rb
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

]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ ruby Factorial.rb
To compute n!, enter n: 5
The value of n! is: 120 
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ ruby Factorial.rb
To compute n!, enter n: 6
The value of n! is: 720 
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ ruby Factorial.rb
To compute n!, enter n: 11
The value of n! is: 39916800 
]0;zs35@gold03: ~/Desktop/214/projects/04[01;32mzs35@gold03[00m:[01;34m~/Desktop/214/projects/04[00m$ exiot[K[Kt
exit

Script done on 2023-02-06 22:07:32-05:00 [COMMAND_EXIT_CODE="0"]
