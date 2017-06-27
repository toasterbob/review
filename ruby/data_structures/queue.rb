class Queue

  def initialize

  end

  def enqueue(el)

  end

  def dequeue

  end

  def show


  end

end


if __FILE__ == $PROGRAM_NAME
  s = Queue.new
  s.enqueue(1)
  s.enqueue(2)
  s.show
  s.enqueue(3)
  s.show
  s.dequeue
  p s.stack
  s.dequeue
  s.show
  s.dequeue
  s.show
end
