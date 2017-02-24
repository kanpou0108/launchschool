# In the game of chess, a queen can attack pieces which are on the same row, column, or diagonal.
# A chessboard can be represented by an 8 by 8 array.

# Just Rough Idea.
class Queens
  # attr_reader :white, :black

  # ↓Same meaning to below one liner code.
  # class Position
  #   def initialize(x, y)
  #     @x = x
  #     @y = y
  #   end
  # end

  class Position < Struct.new(:x, :y); end  

  def initialize(white: [0, 3], black: [7, 3])
    raise ArgumentError if white == black
    @white_queen_position = Position.new(*white)
    @black_queen_position = Position.new(*black)
  end
  
  def white
    [@white_queen_position.x, @white_queen_position.y]
  end

  def black
    [@black_queen_position.x, @black_queen_position.y]
  end
  
  def to_s
    result = ""
    (0..7).each do |row|
      (0..7).each do |column|
        if Position.new(row, column) == @black_queen_position
          result << "B "
        elsif Position.new(row, column) == @white_queen_position
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
    @white_queen_position.x == @black_queen_position.x
  end
  
  def same_column?
    @white_queen_position.y == @black_queen_position.y
  end
  
  def same_diagonal?
    (@white_queen_position.x - @black_queen_position.x).abs == (@white_queen_position.y - @black_queen_position.y).abs
  end
end