# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array
# Output: boolean
# Steps: 
=begin
-define initialize method for argument error and instance variables
-define check card method
-reverse the string because we are asked to start doubling every other number from the penultimate number
-double every other number in the string
-separate 2 digit numbers into single digits in the array
-see if the sum of array is divisible by 10
-output ture or false
=end


# Initial and Refactored Solution




class CreditCard
  def initialize (number)
     @number = number.to_s
    unless @number.length == 16 
      raise ArgumentError.new ("Please enter valid CC number")
    end
   
end

  def check_card
    @arr1 = @number.chars.reverse
    @arr1.map! {|num| num.to_i}
    
    @arr1.each_index do |x| 
      if x.odd? 
        @arr1[x] = @arr1[x] * 2
      end
    end

  
    @arr1.map! {|num| num.to_s}
    @arr1.each_with_index do |x, i|
      if x.length > 1     
        @arr1[i] = x.chars
      end
    end
    
    @arr1.flatten!.map! {|num| num.to_i}
    
    @sum = 0
    @arr1.each {|num| @sum += num}
 
  if @sum % 10 == 0
    p true
  else
    p false
  end
end
end

# number = CreditCard.new(4563960122001999)
# number.check_card




# class CreditCard
#   def initialize (number)
#      @number = number.to_s
#     unless @number.length == 16 
#       raise ArgumentError.new ("Please enter valid CC number")
#     end
   
# end

#   def double_numbers
#     @arr1 = @number.chars.reverse
#     @arr1.map! {|num| num.to_i}
    
#     @arr1.each_index do |x| 
#       if x.odd? 
#         @arr1[x] = @arr1[x] * 2
#       end
#     end
    
#   end

#   def add_numbers
#     @arr1.map! {|num| num.to_s}
#     p @arr1
#     @arr1.each do |x|
#       if x.length > 1     
#         x = x.chars
#         # x.to_s.slice(0,2)
#         p x
#       else
#         return x
#       end
#     end
#     p @arr1
#   end
# end

# number = CreditCard.new(1423456083568345)
# number.double_numbers
# number.add_numbers

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
we initially struggled with separating the 2 digit doubled numbers into indvidual integers

What new methods did you find to help you when you refactored?
We used the slice method in the refactor.

What concepts or learnings were you able to solidify in this challenge?
I was able to practice using .map method which is very complicated for me. 

=end
