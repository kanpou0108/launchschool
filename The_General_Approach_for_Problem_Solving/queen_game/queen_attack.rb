# In the game of chess, a queen can attack pieces which are on the same row, column, or diagonal.
# A chessboard can be represented by an 8 by 8 array.
class Queens
  attr_reader :white, :black
  
  def initialize(white: [0, 3], black: [7, 3])
    raise ArgumentError if white == black
    @white = white
    @black = black
  end
  
  def to_s
    result = ""
    (0..7).each do |row|
      (0..7).each do |column|
        if [row, column] == @black
          result << "B "
        elsif [row, column] == @white
          result << "W "
        else
          result << "_ "
        end
      end
      result.rstrip!
      result << "\n"      
    end
    result.rstrip!    
  end
  
  def attack?
    same_row? || same_column? || same_diagonal?
  end
  
  def same_row?
    @white[0] == @black[0]
  end
  
  def same_column?
    @white[1] == @black[1]
  end
  
  def same_diagonal?
    (@white[0] - @black[0]).abs == (@white[1] - @black[1]).abs
  end
end

# queens = Queens.new
# p assert_equal [0, 3], queens.white
# p assert_equal [7, 3], queens.black
# p queens.to_s
# => ueen_attack.rb:36:in `<main>': undefined method `assert_equal' for main:Object (NoMethodError)