Script started on 2023-02-20 19:51:07-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="105" LINES="24"]
]0;zs35@gold24: ~/Desktop/214/labs/07[01;32mzs35@gold24[00m:[01;34m~/Desktop/214/labs/07[00m$ cat average.rb
# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Feb 20, 2023
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

def sum(array)
   total = 0.0;
   array.each do |n|
      total += n;
   end
   return total;
end

###############################################
# average() computes the average value of an array
# Receive: anArray, an array of numbers
# Return: the average value of anArray.
################################################

def average(array)
   if array.size <= 0
      return 0.0;
   else
      return sum(array) / array.size;
   end
end

def main
   array0 = [];
   array1 = [9.0, 8.0, 7.0, 6.0];

   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main

]0;zs35@gold24: ~/Desktop/214/labs/07[01;32mzs35@gold24[00m:[01;34m~/Desktop/214/labs/07[00m$ ruby average.rb
sum 0 is: 0.0
sum 1 is: 30.0
average 0 is: 0.0
average 1 is: 7.5
]0;zs35@gold24: ~/Desktop/214/labs/07[01;32mzs35@gold24[00m:[01;34m~/Desktop/214/labs/07[00m$ exit
exit

Script done on 2023-02-20 19:51:18-05:00 [COMMAND_EXIT_CODE="0"]
