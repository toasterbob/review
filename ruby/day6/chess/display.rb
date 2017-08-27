require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display

  def initialize(board = Board.new)
    @cursor = Cursor.new([0,0], board)
  end

  def render
    "Hello".colorize(:color => :black, :background => :white)

  end

end

if __FILE__ == $PROGRAM_NAME
  d = Display.new
  d.render
end
