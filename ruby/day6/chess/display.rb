require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display
  attr_accessor :board

  def initialize(board = Board.new)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    display = ""
    board.rows.each_with_index do |row, i|
      square_color = i % 2 == 0 ? :blue : :white
      row.each_with_index do |square, j|
        display += "   ".colorize(:color => :black, :background => square_color)
        square_color = square_color == :blue ? :white : :blue
      end
      display += "\n"
    end
    puts display

  end

end

if __FILE__ == $PROGRAM_NAME
  d = Display.new
  d.render
end
