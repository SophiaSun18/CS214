Script started on 2023-03-06 21:21:01-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="92" LINES="21"]
]0;zs35@gold27: ~/Desktop/214/labs/08[01;32mzs35@gold27[00m:[01;34m~/Desktop/214/labs/08[00m$ cat NameTester.ruby   b
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 6, 2023
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name
   def initialize(first, middle, last)       # initialize the attributes
      @first, @middle, @last = first, middle, last
   end

   def fullName()          # this method returns the full name
      @first + ' ' + @middle + ' ' + @last
   end

   def print()             # this method prints and returns the full name
      puts(fullName())
      fullName()
   end

   attr_reader :first, :middle, :last
end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName]0;zs35@gold27: ~/Desktop/214/labs/08[01;32mzs35@gold27[00m:[01;34m~/Desktop/214/labs/08[00m$ ruby NameTester.rb
John Paul Jones
All tests passed!
]0;zs35@gold27: ~/Desktop/214/labs/08[01;32mzs35@gold27[00m:[01;34m~/Desktop/214/labs/08[00m$ exit
exit

Script done on 2023-03-06 21:21:16-05:00 [COMMAND_EXIT_CODE="0"]
