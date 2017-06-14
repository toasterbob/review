#!/bin/ruby

n,k,m = gets.strip.split(' ').map(&:to_i)

transform = Hash.new {|h, k| h[k] = []}
for a0 in (0..k-1)
    x,y = gets.strip.split(' ').map(&:to_i)
    transform[x].push(y)
    transform[y].push(x)
end
a = gets.strip
a = a.split(' ').map(&:to_i)
