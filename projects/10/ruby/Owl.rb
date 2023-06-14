# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './FlyingBird.rb'

class Owl < FlyingBird

    def call
      'Whoo-hoo!'
    end

end