# Concatenate Two Arrays

# I worked on this challenge by myself


# Your Solution Below

def array_concat(array_1, array_2)
 	if (array_1 != [ ] && array_2 != [ ])
  		array_3 = array_1.concat(array_2)
		return array_3
	else
		return array_3[{}]
	end
end

#rspec failed because i couldn't figure out how to reuturn an empty array if both inputs were empty