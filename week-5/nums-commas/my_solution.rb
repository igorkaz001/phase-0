# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Integer
# What is the output? (i.e. What should the code return?) A string of a number with commas every 3 numbers
# What are the steps needed to solve the problem?
=begin
-convert the integer into a string or array to be able to display commas
-then separate the string into individual values to be manipulated
-reverse the order when adding commas to the string/array (in case the input is 50000 it will not display 5000,00)
-return the final version as a string 
=end


# 1. Initial Solution




# 2. Refactored Solution
def separate_comma(num)
 var = num.to_s.split("").reverse.each_slice(3) #take input integer turn it into a string, split it, reverse it, then slice it into batches of 3 numbers.
 .map{|n| n.join("").reverse}.reverse.join(",") #whatever is in the block is mapped to paramenters defined inthe brackets and returned to main output of the method. I was getting reverse order of the batches of numbers so i added another reverse method outside the block. Then call .join method with parameter of "," to join all blocks with a comma added at joining. 
 return var
end



#p var
 #separate_comma(10000098987876)

=begin
# 3. Reflection
What was your process for breaking the problem down? What different approaches did you consider?
My proccess was to think of a way to seperate the individual characters of the input then reassemble them with a comma added. I later realized i could separate the characters in batches of 3. 

Was your pseudocode effective in helping you build a successful initial solution?
It was somewhat helpful in looking up string and array methods to do the individual manipulations of the input number. Unfortunately I didnt get a solution without using many different methods in the solution. 

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I was only able to get a solution by using various methods and .each_slice enumerable. I used 
.to_s  - to turn the input integer into a string for it to be able to display commas
.split to break up the string into smaller strings
.reverse to count in 3's from the back
.map with a block to start assembling or lining up the peices into a temporary array, to be put back together with subsequent methods. I believe a .join method requires a .map to be present
.reverse to reverse the characters insde the 3 number batch back to original order
.reverse again to reverse the actualy 3 number batches back to thier original order
.join with "," passed as paramenter will joing the correctly assmbled and lined up batches of strings, with ',' in between each batch.


How did you initially iterate through the data structure?
This was the only solution I came up with. The only iteration that was necessary was inisde the .map block to give a parameter to reverse the numbers and combine them into an array

Do you feel your refactored solution is more readable than your initial solution? Why?
Refactored solution is usually more readable because it is likely to use many methods, thus shortening the code. 


=end
