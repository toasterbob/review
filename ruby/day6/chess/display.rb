require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display
  attr_accessor :board
  attr_reader :cursor

  def initialize(board = Board.new)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    display = ""
    board.rows.each_with_index do |row, i|
      square_color = i % 2 == 1 ? :light_blue : :white
      row.each_with_index do |square, j|
        piece = board[[i,j]].nil? ? " " : board[[i,j]].value
        if cursor.cursor_pos == [i, j]
          if cursor.selected == false
            display += " #{piece} ".colorize(:color => :black, :background => :yellow)
          else
            display += " #{piece} ".colorize(:color => :black, :background => :green)
          end
        else
          display += " #{piece} ".colorize(:color => :black, :background => square_color)
        end
        square_color = square_color == :light_blue ? :white : :light_blue
      end
      display += "\n"
    end
    system("clear")
    puts display

  end

  def move
    while true
      cursor.get_input
      render
      p cursor.cursor_pos
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  d = Display.new
  d.render
  d.move
end
