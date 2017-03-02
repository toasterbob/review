def factors(num)
  factors = []
  (1..num).each do |i|
    factors << i if num % i == 0
  end
  factors
end

class Array

  def bubble_sort!(&prc)
    prc ||= Proc.new { |a, b| a <=> b }
    sorted = true
    (0..(self.length - 2)).each do |i|
      if prc.call(self[i], self[i + 1]) == 1
        self[i], self[i+1] = self[i+1], self[i]
        sorted = false
      end
    end
    if sorted
      self
    else
      self.bubble_sort!(&prc)
    end
  end

  def bubble_sort(&prc)
    self.dup.bubble_sort!(&prc)
  end

  def substrings(string)

  end

  def subwords(word, dictionary)

  end

end


if __FILE__ == $PROGRAM_NAME
  p factors(3)
  p factors(4)
  a = [4 , 3, 1, 2]
  p a.bubble_sort
  p a
  p a.bubble_sort!
  p a
end
