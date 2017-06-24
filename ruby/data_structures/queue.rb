class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    p @queue
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
  p s.queue
  s.dequeue
  s.show
  s.dequeue
  s.show
end
