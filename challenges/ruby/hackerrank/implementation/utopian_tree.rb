#!/bin/ruby

def cycle(num)
    tree = 1
    1.upto(num) do |i|
        tree *= 2 if i % 2 == 1
        tree += 1 if i % 2 == 0
    end
    tree
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts cycle(n)
end
