require_relative 'board'

class Game


end




if __FILE__ == $PROGRAM_NAME
  b = Board.new

  #phase1 test
  p b[[0,0]]
  start, end_pos = [0,0], [4,4]
  p b.move_piece(start, end_pos)
  p b
  p b.move_piece(start, end_pos)

  #phase2 test

end
