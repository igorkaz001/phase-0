puts "please enter your first name"
fname = gets.chomp
puts "now your middle name"
mname = gets.chomp
puts "and finally your last name"
lname = gets.chomp

puts "hello " + " " + fname + " " + mname + ", " + lname + " how are you today?"


puts "what is your favorite number?"
num = gets.chomp.to_i
num = num + 1

puts num.to_s + " is a better number than yours because its bigger and better"

# https://github.com/igorkaz001/phase-0/blob/master/week-4/address/my_solution.rb
# https://github.com/igorkaz001/phase-0/blob/master/week-4/math/my_solution.rb


=begin
How do you define a local variable?
	variable name = [value]

How do you define a method?
	def [method_name]

What is the difference between a local variable and a method?
local variable can only be used inside whatever it is in such as method or the whole program. A method can be called upon anywhere in the program.

How do you run a ruby program from the command line?
$ ruby [program =_nane].rb
How do you run an RSpec file from the command line?
$ rspec [spec_file_name].rb

What was confusing about this material? What made sense?
working with rspec was confusing since I havent used this tool before. Figuiring out how it works took a while. Making methods, variables made sence, it was fairly straight forward.

	
=end
