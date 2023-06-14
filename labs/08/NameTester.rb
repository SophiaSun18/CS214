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

testName