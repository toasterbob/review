class MemoizedFibonacci

  def initialize
    @values = {}
  end

  def fibs(num)
    @values[num] ||= calculate_fibs(num)
  end

  def calculate_fibs(num)
    if num == 0
      0
    elsif num == 1
      1
    else
      fibs(num - 1) + fibs(num + 2)
    end

  end

end

if __FILE__ == $PROGRAM_NAME

  fibs(2m
end
