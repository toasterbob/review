require_relative 'pieces'

class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8) {Array.new(8) {NullPiece.new}}
  end


end
