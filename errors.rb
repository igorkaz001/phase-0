# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# by myself
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What\'s there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
# it occurs on line 171.
# 3. What is the type of error message?
# it is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# line 18
# 6. Why did the interpreter give you this error?
#because the method needs and 'end', which is missing.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# line 36
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#`south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# n/a
# 5. Why did the interpreter give you this error?
# because "south_park" was undefined. interpreter doesnt know whether it is a method or variable

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# line 51
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
#Object (NoMethodError)
# 4. Where is the error in the code?
# the method is undefined and is missing 'end'
# 5. Why did the interpreter give you this error?
# ruby needs an end to a method 

# --- error -------------------------------------------------------

# def cartmans_phrase 
#   puts cartmans_phrase "I'm not fat; I'm big-boned!"
# end

# puts cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#line 66 and line 70
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0) 
# 4. Where is the error in the code?
# interpreter didnt expect to see an argument inside the method, in addition to outside the method.
# 5. Why did the interpreter give you this error?
# the arguments for this method aren't being declared correctly

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#line 85 and line 89
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
# the interpreter does not recognize 'offensive_message' variable since it wasn't defined anywhere. it doesn't know what to output



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# line TypeError110
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# the error is on line 110 where i
# 5. Why did the interpreter give you this error?
# interpeter is expecting a second variable for method cartmans_lie, but only 1 of 2 was called
#

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 126
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
# n/a
# 5. Why did the interpreter give you this error?
# because in ruby you cant multiply a number by a string. only the other way around

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# line 141
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# the error is where 20 is being dived by a 0
# 5. Why did the interpreter give you this error?
# because a number can not be dived by a 0. only the other way around (which will result in 0)

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 157
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/usr/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# it is where cartmans_essay.md is being called
# 5. Why did the interpreter give you this error?
# Interpreter couldn't find the file cartmans_essay.md because it doesnt exist in the same directory (or at all)


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
Most difficult for me was the "cartman_says" method

How did you figure out what the issue with the error was?
It didnt seem right to me when the same variable is being called on by the method, then being printed inside the method. Instead it should be printed when the method is called, not inside of it.

Were you able to determine why each error message happened based on the code? 
Yes, I think I was able to figure out each error, without going to outside resources

When you encounter errors in your future code, what process will you follow to help you debug?
I like the process outlined in section 4.4. I may skip step 5 becuase it is not always obvious or important where exactly the error occured. 

=end

