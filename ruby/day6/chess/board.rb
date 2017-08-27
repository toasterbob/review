require_relative 'pieces'

class Board
  attr_accessor :board

  def initialize
    @board = make_starting_grid
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



end
