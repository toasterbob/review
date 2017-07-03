require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    return true if @board.winner != evaluator 
  end

  def winning_node?(evaluator)

  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    game_state_nodes = []

    0.upto(2) do |i|
      0.upto(2) do |j|
        if @board.empty?([i, j])
          new_board = @board.dup
          new_board[[i, j]] = @next_mover_mark
          new_mover_mark = @next_mover_mark == :x ? :o : :x
          game_state_nodes << TicTacToeNode.new(new_board, new_mover_mark, [i, j])
        end
      end
    end

    game_state_nodes
  end
end
