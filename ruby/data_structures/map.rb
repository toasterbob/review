# This is an inefficient implementation of a hash map using arrays

class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    -1
  end

  def remove(key)
    value = lookup(key)
    @map.delete([key, value])
  end

end

if __FILE__ == $PROGRAM_NAME
  m = Queue.new
  m.assign(1, "dog")
  m.assign(2, "cat")
  m.lookup(1)
  m.assign(3, "bob")
  p m.map
  m.lookup(2)
  # m.remove()
  # p m.map
  # m.remove()
  # m.lookup(3)
  # m.remove()
  # m.lookup(1)
end
