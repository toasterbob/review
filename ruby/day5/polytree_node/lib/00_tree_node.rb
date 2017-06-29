class PolyTreeNode

  attr_reader :parent, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent)
    return if self.parent == parent

    old_parent = self.parent
    old_parent._children.delete(self) if old_parent
    @parent = parent
    parent._children << self if parent
  end

  #their solution - I was using attr_reader for children 
  def children
    # We dup to avoid someone inadvertently trying to modify our
    # children directly through the children array. Note that
    # `parent=` works hard to make sure children/parent always match
    # up. We don't trust our users to do this.
    @children.dup
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise "error" unless child_node.parent == self
    child_node.parent = nil
  end

  def dfs(target_value)
    return self if self.value && self.value == target_value

    self.children.each do |child|
      check = child.dfs(target_value)
      return check if check && check.value == target_value
    end
    nil
  end # target 6 - 1, 2, 4, 5, 3, 6

 #    1
 #  2   3
 # 4 5 6 7

  def bfs(target_value)
    queue = [self]

    while !queue.empty?
      check = queue.pop
      return check if check.value == target_value
      check.children.each { |child| queue.unshift(child) }
    end
    nil
  end # target 6 - 1, 2, 3, 4, 5, 6

  protected
  # Protected method to give a node direct access to another node's
  # children.
  def _children
    @children
  end

end

if __FILE__ == $PROGRAM_NAME
  n1 = PolyTreeNode.new("root1")
  n2 = PolyTreeNode.new("root2")
  n3 = PolyTreeNode.new("root3")

  # connect n3 to n1
  n3.parent = n1
  # connect n3 to n2
  n3.parent = n2

  # this should work
  raise "Bad parent=!" unless n3.parent == n2
  raise "Bad parent=!" unless n2.children == [n3]

  # this probably doesn't
  n1.children.each { |child| puts child.value }
  raise "Bad parent=!" unless n1.children == []
end
