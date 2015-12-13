#Attr Methods

# I worked on this challenge by myself

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_accessor :name

	def initialize
		@name = "igor"
	end
end


class Greetings
	def initialize
		@new_greeting = NameData.new
	end

	def hello
		puts "Hello #{@new_greeting}! How wonderful to see you today"
		p @new_greeting
	end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1:
What are these methods doing?
These methods are setter methods, some are reader methods. They are storing values in the initialized variables then displaying it. Then there are methods to modify the state of the variables and assign other values to them.

How are they modifying or returning the value of instance variables?
They are modifying the data by taking an argument in the setter method to change the value after the inital value has been set at the top. These arguments are given at the bottom when the methods are called.

Release 2:
What changed between the last release and this release?
@age variable has been declared at the top as attr_reader, thus eliminating the need to have what_is_age method. 

What was replaced?
attr_reader :age was added while the whole what_is_age method has been scrapped. 

Is this code simpler than the last?
It is simpler because one line replaces 3 lines, as well as eliminating the need to have an extra method. 

Release 3:
What changed between the last release and this release?
The writer method for @age was added at the top of the class

What was replaced?
chage_my_age method was replaced by writer method at the top

Is this code simpler than the last?
Yes it is, because once again 1 line replaced 3 and there is one less method in the code (although the method can still be called due to attr_writer at the top)

Release 6:
What is a reader method?
reader method allows the object to be called up to be viewed outside the class, ie in driver code.

What is a writer method?
writer method allows the object to be called up to be modified outside the class, ie in driver code.

What do the attr methods do for you?
writer and reader attributes combined to shorten the code.

Should you always use an accessor to cover your bases? Why or why not?
Not, sometimes you dont want the user to be able to access or modify certain objects in the code to protect things like user names and passwords.

What is confusing to you about these methods?
The only confusing thing was when to use attr true and when to use attr_accessor. 

=end