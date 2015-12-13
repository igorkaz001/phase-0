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
    elsif number > @answer
      return :high
    else
      return :correct
    end
    @last_guess = number
  end

   def solved?
      if @answer != @last_guess
        return @solved 
      else
        return @solved = true
      end
    end
  
end
 # game = GuessingGame.new(10)
 # game.guess(10)
 # game.solved?

=begin
# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object? 
A real-world object that can be used to represent this is a passenger train. The whole train is a class, where each train car is a method. The passengers(local variables) on the train are restricted to their assigned train car, while the conductors(instance variables) can move among all other train cars on the train.  


# When should you use instance variables? What do they do for you?
Instance variables are used to represent something that is importantn enough in the program to be used across all methods. 


# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
I used if/else statment to check against the answer value in the .guess method. Another if/else in the .sovled. 


# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols are useful in making a program more memory efficient, since symbols use less memory, while behaving very simililar to strings. I am not sure why this code required me to return a sybmol. 


Note:
I was able to get the program to work using my own tests, but rspec gave me two errors that I couldn't resolve: 
1) GuessingGame#guess changes solved? when a correct guess is made
     Failure/Error: expect { game.guess(10) }.to change(game, :solved?).from(false).to(true)
       expected #solved? to have changed from false to true, but did not change
     # ./guessing_game_spec.rb:34:in `block (3 levels) in <top (required)>'
2) GuessingGame#guess reflects the last guess
     Failure/Error: expect { game.guess(5) }.to change(game, :solved?).from(true).to(false)
       expected #solved? to have initially been true, but was false
     # ./guessing_game_spec.rb:45:in `block (3 levels) in <top (required)>'

=end