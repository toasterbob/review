#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    b,w = gets.strip.split(' ').map(&:to_i)
    x,y,z = gets.strip.split(' ').map(&:to_i)
    x = [y + z, x].min
    y = [x + z, y].min
    p (x * b) + (y * w)
end
