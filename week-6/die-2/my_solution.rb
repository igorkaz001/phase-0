# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 
# Output:
# Steps:

# class Die
#   def initialize(sides)
#   	unless sides > 1
#   		raise ArgumentError.new ("please enter a number higher than 1")
#   	end
#     @die_sides = sides
#   end

#   def sides
#     return @die_sides
#   end

#   def roll
#     rolled = rand(1..@die_sides)
#   end
# end
# Initial Solution

class Die
  def initialize(labels)
  	unless labels.length > 1 
  		raise ArgumentError.new ("please enter more than 1 side of die") 
  		@labels = labels
  end

  def sides
  	sides = @labels.to_a.length
  	puts sides
  end

  def roll
  	# @lables = rand(1..@labels.to_a.index.)
  	# p @lables
  	num = @lables.to_a.length#index
  	1.times.map { rand(1..num) }
puts num
  end
end
p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides # still returns the number of sides, in this case 6
p die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly])
end


# Refactored Solution








# Reflection