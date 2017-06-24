class Stack
  attr_reader :stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
    el # retrun el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup # i guess we want to be able to copy this
  end
end

if __FILE__ == $PROGRAM_NAME
  s = Stack.new
  s.add(1)
  s.add(2)
  p s.show # [1, 2]
  s.add(3)
  p s.show # [1, 2, 3]
  s.remove
  p s.stack # [1, 2]
  s.remove # [1]
  p s.show
  s.remove # []
  p s.show
end
