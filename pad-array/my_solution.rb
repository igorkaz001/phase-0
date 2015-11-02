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

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

When you refactored, did you find any existing methods in Ruby to clean up your code?

How readable is your solution? Did you and your pair choose descriptive variable names?

What is the difference between destructive and non-destructive methods in your own words?

=end

