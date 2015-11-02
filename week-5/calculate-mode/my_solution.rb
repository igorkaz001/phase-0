# Calculate the mode Pairing Challenge

# I worked on this challenge  with: Kevin Corso

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.
# useful methods: .find_all, .find, .group_by, .map, sort_by



# 0. Pseudocode
#Input - Array of Ints or Strs
#Output - Array of most common variable
#Steps - Iterate through array. Sort through variables to group same values. Determine which are present the most. Output into an array.

# 1. Initial Solution
def mode(array)
  new_hash = Hash.new(0)
  output = []
  
  array.each do |i| #iterate through the array
    new_hash[i] += 1 #using the variable found in the array as a key, and increasing the value by 1 for each occurence
  end
  p new_hash
  
  new_hash.each do |i, j|  #iterate through hash assigning each key to i, which is the number from the array and each value to j how many times it is int he array or the counter
    if new_hash.values.max == j #.values creates an array; .max compares to see if its the largest number; and compares it to j, which is the counter
      output << i #adds the key to they output array
    end
  end
  p output
end

# mode([2,2,2,3,4,5,5,5])




# def mode_finder(array)
#   output = []
#   new_hash = Hash.new
#   x = 0
  
  
  
#   array.each do |i|
#     new_hash[x] = i
#     x += 1
#   end
#   p new_hash
  
  
# #   new_hash.each do |i, j|
# #     if new_hash.values.max == j
# #       output << j
# #     end
# #   end

#   p output
# end

# 3. Refactored Solution
def mode(array)
  new_hash = Hash.new(0)
  output = []
  
  array.each do |i| #iterate through the array
    new_hash[i] += 1 #using the variable found in the array as a key, and increasing the value by 1 for each occurence
  end
  p new_hash
  
  new_hash.each do |i, j|  #iterate through hash assigning each key to i, which is the number from the array and each value to j how many times it is int he array or the counter
    if new_hash.values.max == j #.values creates an array; .max compares to see if its the largest number; and compares it to j, which is the counter
      output << i #adds the key to they output array
    end
  end
  p output
end

# mode([2,2,2,3,4,5,5,5])



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

What issues/successes did you run into when translating your pseudocode to code?

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?


=end

