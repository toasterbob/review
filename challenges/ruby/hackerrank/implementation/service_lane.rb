#!/bin/ruby

n,t = gets.strip.split(' ').map(&:to_i)
width = gets.strip.split(' ').map(&:to_i)

for a0 in (0..t-1)
    i,j = gets.strip.split(' ').map(&:to_i)
    puts width[i..j].min
end
