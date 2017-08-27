require_relative 'board'
require_relative 'cursor'

class Display

  def initialize(board = Board.new)
    @cursor = Cursor.new([0,0], board)
  end

end

if __FILE__ == $PROGRAM_NAME
  d = Display.new
  
end
