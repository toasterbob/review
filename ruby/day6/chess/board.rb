require_relative 'pieces'

class Board
  attr_accessor :rows

  def initialize
    @rows = make_starting_grid
  end

  def make_starting_grid
    board = Array.new
    2.times do
      board << Array.new(8) {Piece.new("white")}
    end

    4.times do
      board << Array.new(8) {NullPiece.new}
    end

    2.times do
      board << Array.new(8) {Piece.new("black")}
    end
    board
  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @rows[row][col] = piece
  end

  def move_piece(start_pos, end_pos)
    
  end

  def method_name

  end


end
