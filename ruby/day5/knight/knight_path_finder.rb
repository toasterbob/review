require_relative  'poly_tree_node'

class KnightPathFinder
  attr_reader :root, :visited_positions

  def initialize(start)
    @start = start
    @visited_positions = [start]

    build_move_tree
  end

  def valid_moves(pos)
    valid_moves = []
    x, y = pos
    moves = [[2,1], [-2,1], [2,-1], [-2,-1], [1, 2], [-1, 2], [1, -2], [-1, -2]]
    moves.each do |move|
      x2 = x + move[0]
      y2 = y + move[1]
      valid = x2 >= 0 && x2 <= 7 && y2 >= 0 && y2 <= 7
      valid_moves << [x2, y2] if valid
    end
    valid_moves
  end

  def new_move_positions(pos)
    valid = valid_moves(pos)
    @visited_positions.each do |position|
      valid.delete(position)
    end
    valid.each do |position|
      @visited_positions << position
    end
    valid
  end

  def build_move_tree()
    i = 0
    @root = PolyTreeNode.new(@start)
    queue = [@root]
    until queue.empty?
      parent = queue.shift
      new_move_positions(parent.value).each do |move|
        child = PolyTreeNode.new(move)
        parent.add_child(child)
        queue << child
      end
    end

  end

  def find_path(pos)
    node = @root.dfs(pos)
    node.value
  end

end


if __FILE__ == $PROGRAM_NAME
  kpf = KnightPathFinder.new([0, 0])
  p kpf.find_path([7, 7])
end
