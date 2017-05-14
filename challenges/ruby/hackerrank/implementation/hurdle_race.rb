#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
height = gets.strip
height = height.split(' ').map(&:to_i)
# your code goes here

def magic_bev(max_jump, hurdles)
    largest_hurdle = hurdles.max
    largest_hurdle > max_jump ? largest_hurdle - max_jump : 0
end

puts magic_bev(k, height)
