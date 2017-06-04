#!/bin/ruby

n,m = gets.strip.split(' ').map(&:to_i)
c = gets.strip.split(' ').map(&:to_i)

i = 0
max = 0

while i < c.length && n != m
    j = i + 1
    if j < c.length
        distance = (c[j] - c[i])/2
    else
        distance =  ((n -1) - c[i])
    end
    max = distance if distance > max
    i += 1
end

puts max
