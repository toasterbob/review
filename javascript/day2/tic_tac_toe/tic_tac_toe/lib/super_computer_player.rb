require_relative 'tic_tac_toe_node'

class SuperComputerPlayer < ComputerPlayer
  def move(game, mark)
    ai = TicTacToeNode.new(game.board, mark)
    children = ai.children

    children.shuffle! #so that it doesn't play the same move every time
    #if there is a move that guarantees a win the next play, take it
    children.each do |child|  
      return child.prev_move_pos if child.winning_node?(mark)
    end
    #alt way to write above
    # node = children.find{ |child| child.winning_node?(mark) }
    # return node.prev_move_pos if node

    #else pick a move that means they won't lose the next turn
    children.each do |child|
      return child.prev_move_pos if child.losing_node?(mark) == false
    end
    #this means they play a perfect game!
    raise "You should never make it here!"
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Play the brilliant computer!"
  hp = HumanPlayer.new("Mark")
  cp = SuperComputerPlayer.new

  TicTacToe.new(hp, cp).run
end
