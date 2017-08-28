require 'colorize'

class Piece
    attr_reader :color, :pos, :board, :value

    def initialize(color, pos, board, value)
      @color = color
      @pos = pos
      @board = board
      @value = value
    end

    def value
      @value
    end

    def moves

    end
end

if __FILE__ == $PROGRAM_NAME
  piece = Piece.new("white", [0,0], self, "\u2656")
  p piece.value
end
