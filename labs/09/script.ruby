Script started on 2023-03-13 21:55:45-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="93" LINES="68"]
]0;zs35@gold04: ~/Desktop/214/labs/09/ruby[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/ruby[00m$ cat nameTetse   ster.rb
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 13, 2023
####################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

load 'name.rb'

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName]0;zs35@gold04: ~/Desktop/214/labs/09/ruby[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/ruby[00m$ cat bame    name.rb
# name.rb implements class Name.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 13, 2023
####################################################

class Name

    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end
  
    attr_reader :first, :middle, :last
  
    def fullName
      @first + " " + @middle + " " + @last
    end
  
    def print
      puts fullName
      fullName
    end

end]0;zs35@gold04: ~/Desktop/214/labs/09/ruby[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/ruby[00m$ ruby nameTester.rb
John Paul Jones
All tests passed!
]0;zs35@gold04: ~/Desktop/214/labs/09/ruby[01;32mzs35@gold04[00m:[01;34m~/Desktop/214/labs/09/ruby[00m$ exit
exit

Script done on 2023-03-13 21:56:10-04:00 [COMMAND_EXIT_CODE="0"]
