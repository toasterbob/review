class Array

  def my_each(&blk)
    self.length.times do |i|
      blk.call(self[i])
    end
    self
  end

  def my_select(&blk)
    selected = []
    my_each { |el| selected << el if blk.call(el) }
    selected
  end

  def my_reject(&blk)
    selected = []
    my_each { |el| selected << el unless blk.call(el) }
    selected
  end

  def my_any?(&blk)
    my_each { |el| return true if blk.call(el) }
    false
  end

  def my_all?(&blk)
    my_each { |el| return false unless blk.call(el) }
    true
  end

  def my_flatten
    result = []
    self.each do |el|
      if el.is_a?(Array)
        result.concat(el.my_flatten)
      else
        result << el
      end
    end
    result
  end

  

end

if __FILE__ == $PROGRAM_NAME
  # calls my_each twice on the array, printing all the numbers twice.
return_value = [1, 2, 3].my_each do |num|
  puts num
end.my_each do |num|
  puts num
end
# => 1
    #  2
    #  3
    #  1
    #  2
    #  3

p return_value  # => [1, 2, 3]

a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []

p a.my_reject { |num| num > 1 } # => [1]
p a.my_reject { |num| num == 4 } # => [1, 2, 3]

p a.my_any? { |num| num > 1 } # => true
p a.my_any? { |num| num == 4 } # => false
p a.my_all? { |num| num > 1 } # => false
p a.my_all? { |num| num < 4 } # => true

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
end
