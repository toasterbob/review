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
  q = Queue.new
  q.enqueue(1)
  q.enqueue(2)
  q.show
  q.enqueue(3)
  q.show
  q.dequeue
  p q.queue
  q.dequeue
  q.show
  q.dequeue
  q.show
end
