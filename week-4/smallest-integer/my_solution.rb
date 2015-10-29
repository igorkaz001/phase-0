# Smallest Integer

# I worked on this challenge by myself

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# list_of_nums = [3,2,1,5,6]
def smallest_integer(list_of_nums)
	list_of_nums.each do |n1|
  		list_of_nums.each do |n2|
  			if list_of_nums|n2| < list_of_nums|n1|  #check if the the second number pulled out of array is smaller than the first
  				list_of_nums|n1| , list_of_nums|n2| = list_of_nums|n2| , list_of_nums|n1| #if it is smaller, it is moved in front of the bigger number
  			end
  		end
	end

return list_of_nums[0] #once the smallest number is moved to the front, it should be the smallest in the array. so I call on it.
end

#I could not get this solution to work for some reason, because it didnt pass rspec. 