class Stack
  attr_reader :stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    p @stack
  end
end

if __FILE__ == $PROGRAM_NAME
  s = Stack.new
  s.add(1)
  s.add(2)
  s.show
  s.add(3)
  s.show
  s.remove
  p s.stack
  s.remove
  s.show
  s.remove
  s.show
end
