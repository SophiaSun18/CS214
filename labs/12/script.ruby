Script started on Thu Apr  6 23:18:52 2023
[1m[7m%[27m[1m[0m                                                                                          ]7;file://ZeAideMacBook-Air.local/Users/sza/desktop/lab12/ruby[0m[27m[24m[Jsza@ZeAideMacBook-Air ruby % [K[?2004hccat a threaded_array_sum.rb[1m [0m[0m [?2004l
# threaded_array_sum.rb sums the values in an array
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Apr 6, 2023
#
# Usage: ruby threaded_array_sum.rb <inFileName>
######################################################

# make certain the input file was specified on the command-line
def checkCommandLine
   if ARGV.length != 2
      puts "\nUsage: sum <inFileName> <numThreads>\n\n"
      exit(1)
   end
end

# return: an array containing the values from the file
#  whose name was specified on the command-line
def readFile
   strArray = IO.readlines( ARGV[0] )
   intArray = Array.new( Integer(strArray[0]) )
   for i in 2..strArray.size
      if  !strArray[i].nil?
         intArray[i-2] = Integer( strArray[i].chomp )
      end
   end
   intArray 
end

def sumSlice(values, id, sliceSize)
   start = id * sliceSize
   stop = start + sliceSize - 1
   myTotal = 0
   for i in start..stop
      myTotal += values[i]
   end
   myTotal
end

def sumInParallel(values, numThreads)
   sliceSize = values.size / numThreads
   threadArray = Array.new( numThreads )
   result = 0
   lock = Mutex.new
       
   (1..numThreads-1).each do | i |
       threadArray[i] = Thread.new { 
                         myTotal = sumSlice(values, 
                                              i,
                                              sliceSize) 
                         lock.synchronize {
                             result += myTotal
                         }
       }
   end

   myTotal  = sumSlice(values, 0, sliceSize)

   leftovers = values.size % numThreads
   if leftovers > 0
      for i in values.size-leftovers..values.size-1
         myTotal += values[i]
      end
   end

   lock.synchronize {
      result += myTotal
   }

   for i in 1..numThreads-1
      threadArray[i].join
   end

   result
end

def main
   checkCommandLine

   values = readFile

   startTime = Time.now
   total = sumInParallel(values, Integer( ARGV[1] ) )
   endTime = Time.now

   interval = (endTime - startTime).to_f
   puts "\nThe sum is #{total}\n"
   printf(" and computing it took %.9f seconds.\n\n", interval)
end

main

[1m[7m%[27m[1m[0m                                                                                          ]7;file://ZeAideMacBook-Air.local/Users/sza/desktop/lab12/ruby[0m[27m[24m[Jsza@ZeAideMacBook-Air ruby % [K[?2004hrruby threaded_array_sum.rb[1m [0m[0m ../number/ s/1000000 0numbers.txt[1m [0m[0m 1[?2004l

The sum is 50473230
 and computing it took 0.048418000 seconds.

[1m[7m%[27m[1m[0m                                                                                          ]7;file://ZeAideMacBook-Air.local/Users/sza/desktop/lab12/ruby[0m[27m[24m[Jsza@ZeAideMacBook-Air ruby % [K[?2004hruby threaded_array_sum.rb ../numbers/1000000numbers.txt 1 4[?2004l

The sum is 50473230
 and computing it took 0.048794000 seconds.

[1m[7m%[27m[1m[0m                                                                                          ]7;file://ZeAideMacBook-Air.local/Users/sza/desktop/lab12/ruby[0m[27m[24m[Jsza@ZeAideMacBook-Air ruby % [K[?2004heexit[?2004l

Saving session...
...copying shared history...
...saving history...truncating history files...
...completed.

Script done on Thu Apr  6 23:19:15 2023
