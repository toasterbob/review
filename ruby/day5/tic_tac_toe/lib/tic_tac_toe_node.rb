require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)

    if self.board.over?
      #won? returns false in the case of a draw.
      return self.board.won? && self.board.winner != evaluator
      #return false if @board.winner == evaluator
    end

    if self.next_mover_mark == evaluator #it's the player's turn
      # are all moves losing?
      self.children.all? { |child| child.losing_node?(evaluator) }
    else #other player's turn
      self.children.any? { |child| child.losing_node?(evaluator) }
    end

  end

  def winning_node?(evaluator)
    # return true if @board.winner == evaluator
    # return false if @board.winner != evaluator
    if self.board.over?
      #won? returns false in the case of a draw.
      return self.board.won? && self.board.winner == evaluator
      #return false if @board.winner == evaluator
    end

    if self.next_mover_mark == evaluator #it's the player's turn
      # are any moves winning?
      self.children.any? { |child| child.winning_node?(evaluator) }
    else #other player's turn - are all moves winning? 
      self.children.all? { |child| child.winning_node?(evaluator) }
    end

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
