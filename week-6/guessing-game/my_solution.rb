# Build a simple guessing game


# I worked on this challenge by myself
# I spent [2] hours on this challenge.


# Pseudocode
#  Input: integer
#  Output: boolean or symbol
#  Steps:
# -initialize answer as instance variable
# -define guess method
# -define flow control to check the guess against the answer
# -IF answer is equal to guess, return :correct, ELSIF guess is bigger than answer return :high



# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
    
#   end

#   def guess(guess)
#     # if guess == @answer
#     #   puts :correct
#     if guess < @answer
#       puts :low
#     elsif guess > @answer
#       puts :high
#     else
#       @solved = true
#       puts :correct
#     end
#   end
    # def solved?
    #   if 
    #   # if @answer == @last_guess
    #     puts true
    #   else
    #     puts false
    #   end
    # end
#   def solved?
#     if @solved == true
#       puts "you did it!"
#     else
#       puts "you're wrong"
#     end
#   end
# end
# game = GuessingGame.new(10)
# game.guess(10)
# game.solved?
#  game.guess(90) 
#  game.guess(40) 
# game.solved?



# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    @last_guess = 0
    
  end

  def guess(number)
    if number < @answer
      return :low
      @solved = false
    elsif number > @answer
      return :high
      @solved = false
    else
      # @solved = true
      return :correct
    end
    @last_guess = number
  end

   def solved?
      if @answer != @last_guess
        return @solved = false
      else
        return @solved = true
      end
    end
  # def solved?
  #   if @solved == true
  #     return true
  #     # puts "you did it!"
  #   else
  #     return false
  #     # puts "you still haven't guessed it"
  #   end
  # end
end
 # game = GuessingGame.new(10)
 # game.guess(10)
 # game.solved?

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?


# When should you use instance variables? What do they do for you?


# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?


# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# 	