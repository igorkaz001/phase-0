# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array
# Output: a string
# Steps: 
=begin
-create class, initilze method to define any instance variables and argument error
-define a sides method very similar to original die program
-define the roll method to roll a random variable out of the array
=end


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
  	if labels.empty? 
  		raise ArgumentError.new ("please enter more than  side of die") 
  	else
  		@labels = labels
  		@rolled = nil
  	end
  	# unless labels.length > 1 
  	# 	raise ArgumentError.new ("please enter more than  side of die") 
  	# 	@labels = labels
  end

  def sides
  	sides = @labels.to_a.length
  	puts sides
  end

  def roll
  	rolled = @labels.to_a.sample
  	return rolled.to_s
  end
end
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
 p die.sides # still returns the number of sides, in this case 6
 p die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly])



# Refactored Solution


class Die #defines a Die class
  def initialize(labels) #defines a customary initialize class to raise any arguments and declare instance variables
  	if labels.empty? #check if the array passed in is empty
  		raise ArgumentError.new ("please enter more than  side of die") #if it is empty, raise this argument
  	else #otherwise. I belive that if the instance variables, which take up memory, are only created if the array passes the argumenterror above, it would prevent memory to be used for useless variables that will never be used. 
  		@labels = labels #declare the following instance variables to be used by any methods in this class
  		@rolled = nil
  	end
  end

  def sides #defines sides method
  	sides = @labels.to_a.length #finds the number of variables in the given array and assigns that number to sides
  	return sides #returns the sides value from above
  end

  def roll #defines a method roll
  	rolled = @labels.sample #generates a random value from the array and assignes it to rolled
  	return rolled #returns the rolled value 
  end
end
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F']) #creates an instatnce of the Die class and creates a die with the array elementes that are passied passed in 
 p die.sides #returns number of sides on the generated die
 p die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly])







# Reflection