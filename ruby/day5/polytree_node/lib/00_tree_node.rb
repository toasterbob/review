class PolyTreeNode

  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent)
    old_parent = @parent
    old_parent.children.delete(self) if old_parent
    @parent = parent
    parent.children << self if parent
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
