

def fib(n)
  return [1, 1].take(n) if n <= 2
  result = fib(n - 1)
  result << result[-2] + result[-1]

end

p fib(3)
p fib(4)
p fib(5)


def fib2(n)
  result = [1, 1]
  return [] if n < 1
  return [1] if n == 1
  return result if n == 2
  while n > 2
    result << result[-2] + result[-1]
    n -= 1
  end
  result
end

p fib2(3)
p fib2(4)
p fib2(5)
