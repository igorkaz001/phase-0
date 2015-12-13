


#NOTE: I was not able to progress far on this challange. Uploaded what I had. 


# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
class BingoBoard
  
  def initialize(board)
    @bingo_board = board
    @bingo = ["B","I","N","G","O"].sample
    @number = rand(1..100)
  end

  def bingo
    @bingo_board.each do |array|
      check = array.index(@number)
      # p check
      array[check] = 'X' unless check.nil?      
    end
  end
end
  
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88], 
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51], 
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.bingo.map { |game_board| puts game_board.inspect }
    

#     @bingo_board.each { |row|   #example found on the web to interate through dual layer arrays aka sub-arrays
#     @bingo_board.each { |row|

#   row.each { |column|
#       puts column  
#   }
# }
# end
# end
  
  
# if @bingo == "B"
#   #check every first number in the array
#   @bingo_board[0][0] == @number
  
#   @bingo_board.each do |row|
# elsif @bingo == "I"
#   check every second number in the array
  


  # Refactored Solution
  
  
  





 
