# Your Names
# 1)Igor Kazimirov
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, people_to_serve) #defines a method with 2 parameters 
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7} #how many people each key feeds
#   error_counter = 3 #defines a variable at initial value of 3

#   library.each do |food, people| #iterates through library hash key
#     if library[food] != library[item_to_make] #if the food item does not equal the serving size defined on line 10

#       p error_counter += -1 #subtract 1 from the counter
#     end
#   end


#   if error_counter > 0 #checks to make sure error counter is greater than 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input") #if the value of the error_counter is below 0, throw out this error message
#   end

#   serving_size = library.values_at(item_to_make)[0] #defines variable serving_size to be equal to value at 
#   serving_size_mod = people_to_serve % serving_size #remainder of people or order_quantity

#   case serving_size_mod #if there is no remainder of people to serve, return how many to make. if there is a remainder of people to serve, let them know how many people.
#   when 0 
#     return "Calculations complete: Make #{people_to_serve/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{people_to_serve/serving_size} of #{item_to_make}, you have #{serving_size_mod} hungry people to serve. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end
#--------------------------------------------
  

def serving_size_calc(item_to_make, people_to_serve) #defines a method with 2 parameters 
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} #how many people each key feeds

  unless library.include?(item_to_make) 
    raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end
  
  serving_size = library[item_to_make]
  
  serving_size_mod = people_to_serve % serving_size #remainder of people or order_quantity

  case serving_size_mod #if there is no remainder of people to serve, return how many to make. if there is a remainder of people to serve, let them know how many people.
  when 0 
    return "Calculations complete: Make #{people_to_serve/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{people_to_serve/serving_size} of #{item_to_make}, you have #{serving_size_mod} hungry people to serve."
  end
    
end



# h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
# library.values_at("cow", "cat")  #=> ["bovine", "feline"]


 p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
#  p serving_size_calc("cake", 5)
#  p serving_size_calc("cake", 7)
#  p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)