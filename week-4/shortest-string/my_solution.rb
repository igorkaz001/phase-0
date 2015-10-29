# Shortest String

# I worked on this challenge by myself

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
	shortest_string.each {|x1| x1.length}
		shortest_string.each {|x2| x2.length.to_i} #iterrates over each string in array, counts the string's length 
		if shortest_string|x1.length| > shortest_string|x2.length| #compares the 2 pulled string lenghts
			shortest_string|x1| , shortest_string|x2| = shortest_string|x2| > shortest_string|x1| #keeps putting the smallest one to the front
		end
		return shortest_string[0] #returns the first stirng in the array which should be the smallest one
end

# was getting some errors I could not resolve in order to get this to run. 