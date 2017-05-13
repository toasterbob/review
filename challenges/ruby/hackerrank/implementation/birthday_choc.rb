#!/bin/ruby

def getWays(squares, d, m)
    total = 0;
    i = 0;
    while i <= squares.length - m
        total += 1 if squares[i, m].reduce(:+) == d
        i += 1
    end
    total
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d, m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = getWays(s, d, m)
print(result)
