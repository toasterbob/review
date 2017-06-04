#!/bin/ruby

def bread(n, b)
    return "NO" if b.length == 2 && (b[0] - b[1]).abs == 1

end

n = gets.strip.to_i
b = gets.strip.split(' ').map(&:to_i)

puts bread(n, b)
