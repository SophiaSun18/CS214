Script started on 2023-03-24 16:36:01-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="67"]
]0;zs35@gold01: ~/Desktop/214/labs/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/ruby[00m$ cat Bird.rb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 24, 2023
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
  
    def print
      puts name + " " + className + " says " + "\"" + call + "\""
    end
  
  end]0;zs35@gold01: ~/Desktop/214/labs/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/ruby[00m$ cat Duck.rb
# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 24, 2023
####################################################

require './Bird.rb'

class Duck < Bird

    def call
      'Quack!'
    end

end]0;zs35@gold01: ~/Desktop/214/labs/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/ruby[00m$ cat Goose.rb
# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 24, 2023
####################################################

require './Bird.rb'

class Goose < Bird

    def call
      'Honk!'
    end

end]0;zs35@gold01: ~/Desktop/214/labs/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/ruby[00m$ cat Owl.rb
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 24, 2023
####################################################

require './Bird.rb'

class Owl < Bird

    def call
      'Whoo-hoo!'
    end

end]0;zs35@gold01: ~/Desktop/214/labs/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/ruby[00m$ cat birs ds.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: ZeAi Sun
# Date: Mar 24, 2023
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"]0;zs35@gold01: ~/Desktop/214/labs/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/ruby[00m$ ruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird says "Squaaaaaaawk!"
Donald Duck says "Quack!"
Mother Goose says "Honk!"
Woodsey Owl says "Whoo-hoo!"


]0;zs35@gold01: ~/Desktop/214/labs/10/ruby[01;32mzs35@gold01[00m:[01;34m~/Desktop/214/labs/10/ruby[00m$ exit
exit

Script done on 2023-03-24 16:36:21-04:00 [COMMAND_EXIT_CODE="0"]
