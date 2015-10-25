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
