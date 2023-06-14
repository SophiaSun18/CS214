# TempTester.rb tests class Temperature and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 18, 2023
####################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

load 'Temperature.rb'

def testTemp 
   baseTemp = Temperature.InputOp
   limitTemp = Temperature.InputOp
   puts "Enter the step value: "
   stepValue = gets

   while Temperature.lessThan(baseTemp, limitTemp)
      Temperature.OutputOp(Temperature.convertF(baseTemp))
      Temperature.OutputOp(Temperature.convertC(baseTemp))
      Temperature.OutputOp(Temperature.convertK(baseTemp))
      puts "\n"
      baseTemp = Temperature.raise(baseTemp, stepValue)
   end

   puts "All tests passed!\n"
end

testTemp