# This is an inefficient implementation of a hash map using arrays

class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key, value)

  end

  def lookup(key)

  end

  def remove(key)

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
