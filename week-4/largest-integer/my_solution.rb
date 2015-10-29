# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
	list_of_nums.each do |n1|
  		list_of_nums.each do |n2|
  			if list_of_nums|n1| < list_of_nums|n2|  #check if the the second number pulled out of array is larger than the first
  				list_of_nums|n1| , list_of_nums|n2| = list_of_nums|n2| , list_of_nums|n1| #if it is larger, it is moved in front of the smaller number
  			end
  		end
	end

return list_of_nums[0] #once the largest number is moved to the front, it should be the largest in the array. so I return it.
end
#because of some unfamiliar errors i could not resolve, i couldn't get this program to run