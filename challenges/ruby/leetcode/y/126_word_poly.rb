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
    # self.parent._children << self unless self.parent.nil? #theirs - but I like mine better
    self
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
    child_node.parent = self #uses the parent= method above to do the work
  end

  def remove_child(child_node)
    raise "error" unless child_node.parent == self #can't remove a child who doesn't exist
    #theirs - but my one line above seems better
    # if child && !self.children.include?(child)
    #   raise "Tried to remove node that isn't a child"
    # end
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

    until queue.empty?
      # check = queue.pop # change from pop so we can use concat
      check = queue.shift
      return check if check.value == target_value
      # check.children.each { |child| queue.unshift(child) }
      queue.concat(check._children)
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
