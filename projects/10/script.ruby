Script started on 2023-03-27 16:00:35-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="79" LINES="67"]
]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat Bird.rb
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
  
  end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat FlyingBird.rb
# FlyingBird.rb | Defines the FlyingBird class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './Bird.rb'

class FlyingBird < Bird

    def movement
      'flew past'
    end

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat Walkingbird.     ib  Bird.rb
# WalkingBird.rb | Defines the WalkingBird class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './Bird.rb'

class WalkingBird < Bird

    def movement
      'walked past'
    end

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cart    t Duck.rb
# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './FlyingBird.rb'

class Duck < FlyingBird

    def call
      'Quack!'
    end

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat Goose.rb
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

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat Owl.rb
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

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat Penguin.rb
# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './WalkingBird.rb'

class Penguin < WalkingBird

    def call
      'Huh-huh-huh-huuuh!'
    end

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat Ostrich.rb
# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './WalkingBird.rb'

class Ostrich < WalkingBird

    def call
      'Snork!'
    end

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat k Kiwi.rb
# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
####################################################

require './WalkingBird.rb'

class Kiwi < WalkingBird

    def call
      'Blablabla!'
    end

end]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ cat birds.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 27, 2023
######################################################

require './Bird.rb'
require './FlyingBird.rb'
require './WalkingBird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Peter"
bird4.print

bird5 = Ostrich.new "Orville"
bird5.print

bird6 = Kiwi.new "Katherine"
bird6.print

puts "\n\n"]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ ruby birs,  ds.rb

Welcome to the Bird Park!

Donald Duck just flew past and said "Quack!"
Mother Goose just flew past and said "Honk!"
Woodsey Owl just flew past and said "Whoo-hoo!"
Peter Penguin just walked past and said "Huh-huh-huh-huuuh!"
Orville Ostrich just walked past and said "Snork!"
Katherine Kiwi just walked past and said "Blablabla!"


]0;zs35@gold01: ~/Desktop/214/projects/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/projects/10/ruby[00m$ exit
exit

Script done on 2023-03-27 16:01:55-04:00 [COMMAND_EXIT_CODE="0"]
