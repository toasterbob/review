# This is an inefficient implementation of a hash map using arrays

class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key, value)
    i = @map.index?([key, value])
    if i
      map[i] = value
    else
      @map << [key, value]
    end
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
  m = Map.new
  m.assign(1, "dog")
  m.assign(2, "cat")
  p m.lookup(1) # "dog"
  m.assign(3, "bob")
  p m.map # [[1, "dog"], [2, "cat"], [3, "bob"]]
  p m.lookup(2) # "cat"
  m.remove(1)
  p m.map # [[2, "cat"], [3, "bob"]]
  m.remove(3)
  p m.lookup(3) #-1
  p m.remove(3) # nil
  p m.map # [[2, "cat"]]
  p m.lookup(2) # "cat"
end
