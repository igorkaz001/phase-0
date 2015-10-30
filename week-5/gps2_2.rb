=begin
PSEUDOCODE
create a new hash
define a method to make a new list
input(array name, string, integer)
output (updated array, strings, integers)
define a method to add an item
define a method to remove an item
define a method to update their quantities
define a method to puts a list
=end

# initial code

glist = {}

def additem(list,item,quantity)
  return if quantity == 0  
  list[item] = quantity
end  

def removeitem(list, item)
  list.delete(item)
end

def updatequantity(list, item, quantity)
  list[item] = quantity  
end

def printlist(list)
  list.each do |item,quantity|
    puts "There are #{quantity} #{item}"    
  end 
end

additem(glist, "lemonade", 2)
additem(glist, "tomatoes", 3)
additem(glist, "onions", 1)
additem(glist, "ice cream", 4)
removeitem(glist, "lemonade")
updatequantity(glist, "ice cream", 1)
printlist(glist)


=begin
What did you learn about pseudocode from working on this challenge?
I learned about different styles of pseudocoding. My pair and I threw out intial ideas about the workflow of the program into pseudocode, then wrote it one method at a time. 

What are the tradeoffs of using Arrays and Hashes for this challenge?
We used hashes because it was easier to track the items that way. Arrays could have also been used, but we would have needed to remeber the index of each item in integer form as opposed to calling it what it is in a form of a string. 

What does a method return?
A method returns the results of the operations/logic nested inside the method.

What kind of things can you pass into methods as arguments?
You can pass almost anything into methods as arguments: strings, arrays, hashes, integers, orther methods, etc

How can you pass information between methods?
By creating a variable outside of all methods (but insde the program) then using that variable as argument to call methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
The concept of instance variable vs local variable. We had to make sure that the varibales were accesable to all methods, which required a specific place where we defined the variable. 
=end