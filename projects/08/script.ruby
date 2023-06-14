Script started on 2023-03-13 19:54:52-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="93" LINES="68"]
]0;zs35@gold04: ~/Desktop/214/projects/08[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/08[00m$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 13, 2023
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

   def setFirst(aFirst)    # this method changes the first name
      @first = aFirst
   end

   def setMiddle(aMiddle)  # this method changes the middle name
      @middle = aMiddle
   end

   def setLast(aLast)      # this method changes the last name
      @last = aLast
   end

   def lfmi()              # this method return the lastname + firstname + middleInitial.
      @last + ', ' + @first + ' ' + @middle[0] + '.'
   end

   def read()              # this method reads the value from the keyboard.
      puts "\n"
      @first = gets.chomp
      @middle = gets.chomp
      @last = gets.chomp
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

   name.setFirst("Alice");
   name.setMiddle("Mary");
   name.setLast("Sue");

   assert name.first == "Alice"
   assert name.middle == "Mary"
   assert name.last == "Sue"

   print name.fullName()
   assert name.fullName == "Alice Mary Sue"

   assert name.lfmi() == "Sue, Alice M."

   name.read();
   print name.fullName() + "\n"
   
   print "All tests passed!\n"
end

testName]0;zs35@gold04: ~/Desktop/214/projects/08[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/08[00m$ ruby NameTester.rb
John Paul Jones
Alice Mary Sue
ZEA  eAi  
Sophia
Sun
ZeAi Sophia Sun
All tests passed!
]0;zs35@gold04: ~/Desktop/214/projects/08[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/projects/08[00m$ exit
exit

Script done on 2023-03-13 19:55:09-04:00 [COMMAND_EXIT_CODE="0"]
