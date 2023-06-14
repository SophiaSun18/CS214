Script started on 2023-01-23 21:31:43-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="124" LINES="21"]
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
# Student Name: ZeAi Sun
# Date: Jan 23, 2023
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
   if (year =~ /freshman/) then 1;
   elsif (year =~ /sophomore/) then 2;
   elsif (year =~ /junior/) then 3;
   elsif (year =~ /senior/) then 4;
   else 0;
   end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ ruby year_codes.rb
Enter the year: sophomore
Numeric code is: 2
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ ruby year_codes.rb
Enter the year: master
Numeric code is: 0
]0;zs35@maroon04: ~/Desktop/214/labs/03[01;32mzs35@maroon04[00m:[01;34m~/Desktop/214/labs/03[00m$ exit
exit

Script done on 2023-01-23 21:32:12-05:00 [COMMAND_EXIT_CODE="0"]
