# array.rb contains a subprogram that fills an array with values
# and a subprogram that displays the values in the array.
#
# Student Name: ZeAi Sun
# Date: Feb 28, 2023
#################################################################

# readArray() fills an already-allocated array with values from the keyboard.
# Receive: array anArray, int itsSize.
######################################################

def readArray(anArray, itsSize)
    for i in 0..itsSize - 1
        print "Enter the next value: ";
        anArray[i] = gets.to_f;
    end
end

# printArray() displays the values in an array on the screen, separated by newlines.
# Receive: array anArray, int itsSize.
######################################################

def printArray(anArray, itsSize)
    for i in 0..itsSize - 1
        puts anArray[i];
    end
end

def main
  # prompt for the size of the array.
  print "Enter the size of the array: "; 
  size = gets.to_i;

  # create an array with the given size, call readArray() and printArray().
  result = Array.new(size);
  readArray(result, size);
  printArray(result, size);
end

main