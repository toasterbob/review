require_relative 'pieces'

class Board
  attr_accessor :rows

  def initialize
    @rows = make_starting_grid
  end

  def make_starting_grid
    board = Array.new
    2.times do
      row = []
      8.times do
        row << Piece.new("white", [0,0], self, "\u2656")
      end
      board << row
    end

    4.times do
      board << Array.new(8) {nil}#{NullPiece.new}
    end

    2.times do
      board << Array.new(8) {Piece.new("black", [0,0], self, "\u2656".colorize(:red))}
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
    raise 'start position is empty' if self[start_pos].nil?
    raise 'piece cannot move to that location' unless valid_move?

    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  end

  def valid_move?
    true
  end




end
