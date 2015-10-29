# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	shortest_string.each {|x1| x1.length}
		shortest_string.each {|x2| x2.length.to_i} #iterrates over each string in array, counts the string's length 
		if shortest_string|x2.length| > shortest_string|x1.length| #compares the 2 pulled string lenghts
			shortest_string|x1| , shortest_string|x2| = shortest_string|x2| > shortest_string|x1| #keeps putting the bigger one to the front
		end
		return shortest_string[0] #returns the first stirng in the array which should be the largest one
end
end

# was getting some errors for > sign. I could not resolve it, in order to get this to run. 