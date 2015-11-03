# Pseudocode
# input: array, an integer, nil/string
# output: array 
# define a method pad
# check array length to see if is equal or greater than the input integer
# if it is, print the array
#   if it not modify the array to add nil/string for each missing variable up to specified number
#     use 'count' method for array to get the inital number of values
#       if less than interger we add neccessary number of nils or string value from input

      
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.count >= min_size
    return array
  else
    diff = min_size - array.count
    array2 = Array.new(diff, value)
#     g = array << array2
#     return g.flatten!
    return array.concat(array2)
end
end


def pad(array, min_size, value = nil) #non-destructive
  if array.count >= min_size
    return array
  else
    diff = min_size - array.count
    array2 = Array.new(diff, value)
    return array + array2
end
end
  
=begin
Were you successful in breaking the problem down into small steps?
Although we thought we broke the steps down into small parts, we found that our final product deviated from our planned process. 

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We were not able to easily translate our pseudocode into code. The diffulty was finding the methods in hash class that would be useful in this challege. 

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution did not pass all the tests, so we had to change some things around, even between the two methods, which was a form of refactoring. 
When you refactored, did you find any existing methods in Ruby to clean up your code?
We stubmled upon a method that allowed us to refactor by accident, while trying to get the destructive method to work. 

How readable is your solution? Did you and your pair choose descriptive variable names?
I hope it's as readable to others as it was for me. We did try to use descriptive variable names while preserving typing efficiency. 

What is the difference between destructive and non-destructive methods in your own words?
A destructive method will actually alter the variable or the object that is passed into the method. While the non-destructive method will create a temp copy to return, then go back to the original string for any future changes. 

=end

