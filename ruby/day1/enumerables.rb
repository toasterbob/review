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

  def my_zip(*arrays)
    zipped_array = []
    self.length.times do |i|
      mini_arr = [self[i]]
      arrays.each do |array|
        mini_arr << array[i]
      end
      zipped_array << mini_arr
    end
    zipped_array
  end

  def my_rotate(num = 1)
    rotated = self.dup
    if num < 0
      (-num).times do
        el = rotated.pop
        rotated.unshift(el)
      end
    else
      num.times do
        el = rotated.shift
        rotated << el
      end
    end
    rotated
  end

  def my_join(spacer = "")
    joined = ""
    self.each_with_index do |el, i|
      joined << el
      joined << spacer unless i == (self.length - 1)
    end
    joined
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

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

c = [10, 11, 12]
d = [13, 14, 15]
p [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

a = [ "a", "b", "c", "d" ]
p a.my_rotate         #=> ["b", "c", "d", "a"]
p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
p a.my_rotate(15)     #=> ["d", "a", "b", "c"]

a = [ "a", "b", "c", "d" ]
p a.my_join         # => "abcd"
p a.my_join("$")    # => "a$b$c$d"
end
