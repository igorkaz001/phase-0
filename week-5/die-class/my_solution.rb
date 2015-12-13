# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: method.class.new with a paramater integer 
# Output: integers either number of sides or rolled number
# Steps:
=begin
in the die class initialize the number of sides so it can take it as an argument
in initilize method, add the necessary error message for when sides is 1 or less
then declare instance variable
in sides method, return the number of sides in this instance
in roll method generate a random number from 1 to whatever the paramater user passed into the class 

=end
# 1. Initial Solution

class Die
  def initialize(sides)
  	unless sides > 1
  		raise ArgumentError.new ("please enter a number higher than 1")
  	end
    @die_sides = sides
  end

  def sides
    return @die_sides
  end

  def roll
    rolled = rand(1..@die_sides)
  end
end



# 3. Refactored Solution

# class Die
#   def initialize(sides)
#   	unless sides > 1
#   		raise ArgumentError.new ("please enter a number higher than 1")
#   	end
#     @die_sides = sides
#   end

#  attr_reader :sides

#   end

#   def roll
#     rolled = rand(1..@die_sides)
#   end
# end






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
It is an error message that we can generate for the user, when a certain condition was not met on the user end. 

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
The only new meethod was rand which generates a random number. No difficulties once I figured out how ranges work in ruby. 

What is a Ruby class?
A ruby class is like a blueprint for an object that will be able to use all methods inside the class. 

Why would you use a Ruby class?
to create a bunch of objects that will share methods and atributes. with ruby class I only need to define those attributes and methods once. then just call on them for each new object that I create.

What is the difference between a local variable and an instance variable?
A local variable only exists and is assesable inside a method. An instance variable is accessable anywhere in the instance of a class. It exists as long as the instance of a class exists. 

Where can an instance variable be used?
anywehre in the instance of a class. 

=end