# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

class Bird

    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def call
      'Squaaaaaaawk!'
    end
  
    def className
      self.class.to_s
    end

    def movement
      'move'
    end
  
    def print
      puts name + " " + className + " just " + movement + " and said " + "\"" + call + "\""
    end
  
  end