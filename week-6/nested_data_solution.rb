# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner",["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[1][2][0]
 p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |element|
	if element.kind_of?(Array)
		element.each {|inner|  p inner + 5}

	end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


=begin
Refactor:
What are some general rules you can apply to nested arrays?
nested arrays can have more arrays or hashes inside of it. 

What are some ways you can iterate over nested arrays?
One way is to set up an each itterator for every element, then use #kind_of to check whether it is an array, then set up another iteration. 

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I did not find any new methods, I used #kind_of method fromt he example and it worked for me. 
