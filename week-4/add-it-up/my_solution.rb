# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.


# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of array
# Steps to solve the problem.
# define a method called total with argument of array
# add all numbers inside the array
# output the sum

# 1. total initial solution
#array_1 = [4, 4, 5, 5, 6, 6, 6, 7] 

def total (array)
	sum=0
	array.each do |n|  sum += n
	end
	return sum
end


#total (array_1)



# 3. total refactored solution

# def total (array)
# 	sum=0
# 	array.inject{|sum,n| sum + n}
	
# 	return sum
# end

#I dont think this version works. That's why I comment it out

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings 
# Output: a sentence
# Steps to solve the problem.
# define a sentence_maker method
# pull individual objects out of array and put them in one string
# capitalize the string
# return the string

# 5. sentence_maker initial solution

def sentence_maker (array)
	sentence = ""
	array.each do |n| sentence << n.to_s << " "
	end
	sentence.capitalize!
	sentence << "."
	return sentence
end

#rspec returned error because the "." had a space before the last letter of the sentence. otherwise it looked formated. 

# 6. sentence_maker refactored solution

# Coudn't  find any methods to refactor this code. 