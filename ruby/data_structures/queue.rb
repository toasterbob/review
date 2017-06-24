class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
    el #return el
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue.dup # i guess we want to make it so that they can copy this using show?
  end

end


if __FILE__ == $PROGRAM_NAME
  q = Queue.new
  q.enqueue(1)
  q.enqueue(2)
  p q.show # [2, 1]
  q.enqueue(3)
  p q.show # [3, 2, 1]
  q.dequeue
  p q.queue # [3, 2] - similar to show with the dup
  q.dequeue
  p q.show # [3]
  q.dequeue
  p q.show # []
end
