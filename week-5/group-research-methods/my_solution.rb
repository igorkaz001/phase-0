# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select {|x| x.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
 print source.select {|key, value| value == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
# Pseudo for Array
# Map the elements in the source that are integers so we can make them strings
# Increment destructively mapped integers by the value of thing_to_modify so source is changed.


def my_array_modification_method!(source, thing_to_modify)
  source.map! { |i| i.is_a?(Integer)? (i + thing_to_modify) : i }
end

# Pseudo for Hash
# Iterate through source with each to get key/value pairs.
# Modify key in source[key] by incrementing by thing_to_modify the values.


def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key, value|
    source[key] = value + thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
# is_a?(Integer) to pick only integers in the source on the map method
# .map takes an object and a block and runs the block for each element, it outputs each value from the block.
# .each returns all the elements in an array or hash


# Darius Atmar
def my_array_sorting_method(source)

  source.sort do |x,y|
    if x.class == y.class
      x <=> y
    else
      x.to_s <=> y.to_s
    end
  end
end
def my_hash_sorting_method(source)
  source.sort {|pair_a, pair_b| pair_a[1] <=> pair_b[1] }
end
# Identify and describe the Ruby method(s) you implemented.
# The first method, my_array_sorting_method, sorts an array using the sort method by comparing two array values using the comparator '<=>'and switching their positions if the one on the left is larger than the one on the right. I realized that if I just compared every item.to_s, then for some integer values, 100.to_s would be considered less than 2.to_s, for example. This is what the rather unnecessary (who wants 100 dogs?) if/else statements are for.
#
# The second method, my_hash_sorting_method, sorts a hash by ascending hash values. From doing some research, I found that the hash .sort method first converts a hash to an array of arrays. Each element in the new array is itself an array containing two elements, a name and age, in that order.  Then, using the given block of code, sort compares the second element of each inner array to another using the comparator <=> like before.
#
# You can use these methods easily by calling them with an array or hash, respectively, as arguments.

# I don't really have any Ruby Docs tricks except for the super basic habit of using the 'find' function in my browser to check if a self-explanatory method (like sort) exists before checking the list of methods one by one. While doing that, I actually came across an interesting question of why the Hash Ruby Doc doesn't list 'sort' as a method, yet you can call sort on it. I think this may be due to the Enumerable module being included in Hash.



# Igor Kazimirov
def my_array_deletion_method!(source, thing_to_delete)
  source.reject! {|x| x == thing_to_delete}
 return source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! {|x, n|  x == thing_to_delete}
  return source
end

# Identify and describe the Ruby method(s) you implemented.
#I used just the .reject! method since it was the only method that could delete items in array and hash that was a destructive method. the similar methods are non-destructive 
#
#


# Person 5
def my_array_splitting_method(source)
  new_array = [[],[]]
  source. each do |x|
    if x.is_a?(Integer)
      new_array[0].push(x)
    else
      new_array[1].push(x)
    end
  end
  return new_array
end

#i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]

def my_hash_splitting_method(source, age)
  new_array = [[],[]]
  source.each do | key, value |
    if value <= age
      new_array[0].push([key, value])
    else
      new_array[1].push([key, value])
    end
  end
  return new_array
end




# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#I used just the .reject! method since it was the only method that could delete items in array and hash that was a destructive method. the other similar methods are non-destructive 
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#It was good practice of what I just learned from the challange
#
#