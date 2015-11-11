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
  	if labels.empty? 
  		raise ArgumentError.new ("please enter more than one side of die") 
  	else
  		@labels = labels
  		@rolled = nil
  	end
  	# unless labels.length > 1 
  	# 	raise ArgumentError.new ("please enter more than one side of die") 
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
 #die.sides #returns number of sides on the generated die
 #die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly])






=begin
# Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference was pulling a random string element out of an array as opposed a random number in the array. I was looking at methods to roll a random number just using the numeric indexes of the array then returning the value corresponding to the index that was picked. Then I came across a .sample method which would do all that work in one method, so I went with that. 

What does this exercise teach you about making code that is easily changeable or modifiable? 
It taught me that the similarity in the available methods for each classes such a string, interger, array, hash is useful when the input or output changes drom one of these classes to the other. Many times the methods may not be called the same, but similarly functioning methds are be shared across those classes. 

What new methods did you learn when working on this challenge, if any?
I learned .sample picks a random element out of the array. 

What concepts about classes were you able to solidify in this challenge?
it helped me solidify the initialize class and how to declare instance variables



=end