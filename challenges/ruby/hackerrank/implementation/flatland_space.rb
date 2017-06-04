#!/bin/ruby

n,m = gets.strip.split(' ').map(&:to_i)
c = gets.strip.split(' ').map(&:to_i).sort

i = 0
max = 0

while i < c.length && n != m
    j = i + 1
    if i == 0
        distance = [c[i], 100 - 1 - c[i]].max if m == 1
        distance = [c[i], (c[j] - c[i])/2].max if m > 1
    elsif j < c.length
        distance = (c[j] - c[i])/2
    else
        distance =  ((n -1) - c[i])
    end
    max = distance if distance > max
    i += 1
end

puts max
