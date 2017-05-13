#!/bin/ruby

def getWays(squares, d, m)
    total = 0

    squares.each_cons(m) do |block|
        total += 1 if block.reduce(:+) == d
    end

    return total
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d,m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = getWays(s, d, m)
print(result)
