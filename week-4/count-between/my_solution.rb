# Count Between

# I worked on this challenge by myself

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
   if (upper_bound > lower_bound )
   	num = list_of_integers.count {|x| (lower_bound..upper_bound) }
   	return num
   else
   	return 0
   end
end

#at this point I am getting 3/6 failures. Not sure where the error lies. 