#!/bin/ruby

n = gets.strip.to_i
calories = gets.strip.split(' ').map(&:to_i).sort.reverse
total = 0
calories.each_with_index do |c, i|
    total += (c * 2**i)
end
puts total 
