# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird

    def call
      'Honk!'
    end

end