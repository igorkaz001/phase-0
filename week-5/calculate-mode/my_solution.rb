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
  
  array.each do |i| 
    new_hash[i] += 1 
  end
  p new_hash
  
  new_hash.each do |i, j|  
    if new_hash.values.max == j 
      output << i 
    end
  end
  p output
end

# mode([2,2,2,3,4,5,5,5])



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We decided to implement the hash structure, without knowing why at first (we saw the hint on the directions page). Later we realized that hash is better for this challange because the key would represent the number from the input array while the value could represent the counter of that key. if we were to use an array, we could not control the index value since it is assigned automaticaly in assending order. 

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Unfortunately no. The problem is I do not know all the methods for hash/array class to know what direction we will take in solving the challenge. Once we started trying out differnt things to see what worked did we slowly realize what direction we should go. 

What issues/successes did you run into when translating your pseudocode to code?
See previous answer. We didn't know which methods we would end up using so pseudocode was failry general. 

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
For iteration we used both .do and .each method. In our final versin we used combination of .values and .max (which i didnt know before the challange). They were a bit hard to implement becuase it was difficult to conceptualize how they interacted with the hash. once we were able to do that, we implemented them in combination.


=end

