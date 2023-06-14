# Temperature.rb implements class Temperature.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 18, 2023
####################################################

class Temperature

    # Temperature object constructor with initialization  
    def initialize(degrees, scale)
      begin
        test(degrees, scale)
        @myDegree = degrees
        @myScale = scale
      rescue
        puts "Invalid Argument!"
      end
    end
  
    # test if the given degree and scale constitute a valid temperature
    def test(degrees, scale)
      if (scale == 'F' || scale == 'f' || scale == 'C' || scale == 'c' || scale == 'K' || scale == 'k') then
        if scale == 'F' || scale == 'f' then
          if degrees.to_f < -459.67 then
            raise "Invalid degree input!"
          end
        elsif scale == 'C' || scale == 'c' then
          if degrees.to_f < -273.15 then
            raise "Invalid degree input!"
          end
        elsif scale == 'K' || scale == 'k' then
          if degrees.to_f < 0 then
            raise "Invalid degree input!"
          end
        end
      else
        raise "Invalid scale input!"
      end
    end

    # extractor for the degree and scale of a Temperatur object
    attr_reader :myDegree, :myScale

    # converter to Temperature in F
    def self.convertF(temp)
      newTemp = temp

      if (temp.myScale == 'C' || temp.myScale == 'c') then
        newDegree = temp.myDegree.to_f * 9 / 5 + 32
        newTemp = Temperature.new(newDegree, 'F')
      elsif (temp.myScale == 'K' || temp.myScale == 'k') then
        newDegree = (temp.myDegree.to_f - 273.15) * 9 / 5 + 32
        newTemp = Temperature.new(newDegree, 'F')
      end

      newTemp
    end

    # converter to Temperature in C
    def self.convertC(temp)
      newTemp = temp

      if (temp.myScale == 'F' || temp.myScale == 'f') then
        newDegree = (temp.myDegree.to_f - 32) * 5 / 9
        newTemp = Temperature.new(newDegree, 'C')
      elsif (temp.myScale == 'K' || temp.myScale == 'k') then
        newDegree = temp.myDegree.to_f - 273.15
        newTemp = Temperature.new(newDegree, 'C')
      end

      newTemp
    end
  
    # converter to Temperature in K
    def self.convertK(temp)
      newTemp = temp

      if (temp.myScale == 'C' || temp.myScale == 'c') then
        newDegree = temp.myDegree.to_f + 273.15
        newTemp = Temperature.new(newDegree, 'K')
      elsif (temp.myScale == 'F' || temp.myScale == 'f') then
        newDegree = (temp.myDegree.to_f - 32) / 1.8 + 273.15
        newTemp = Temperature.new(newDegree, 'K')
      end

      newTemp
    end

    # input operation that create a Temperature from a string
    def self.InputOp()
      _info = ''
      puts "Enter temp info: "
      _info = gets
      infoList = _info.split

      degree = infoList.at(0)
      scale = infoList.at(1)

      Temperature.new(degree, scale)
    end

    # output operation that print out a Temperature as a string
    def self.OutputOp(temp)
      printf("%0.02f", temp.myDegree.to_f)
      print "    " + temp.myScale + "    "
    end

    # raise the degree of a temperature by the given input
    def self.raise(temp, factor)
      Temperature.new(temp.myDegree.to_f + factor.to_f, temp.myScale)
    end

    # lower the degree of a temperature by the given input
    def self.lower(temp, factor)
      begin
        test(temp.myDegree - factor, temp.getScale)
        Temperature.new(temp.myDegree - factor, temp.myScale)
      rescue
        puts "Invalid Argument!"
      end
      temp
    end

    # check if two Temperatures are equal
    def self.equals(temp1, temp2)
      temp1.myDegree == temp2.myDegree && temp1.myScale == temp2.myScale
    end

    # check if one Temperature is less than the other
    def self.lessThan(temp1, temp2)
      s = temp1.myScale

      if (s == 'F' || s == 'f') then
        temp2 = Temperature.convertF(temp2)
      elsif (s == 'C' || s == 'c') then
        temp2 = Temperature.convertC(temp2)
      else
        temp2 = Temperature.convertK(temp2)
      end

      temp1.myDegree.to_f < temp2.myDegree.to_f
    end

end