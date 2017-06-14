#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
# your code goes here
a.sort!
min = (a[1] - a[0]).abs

1.upto(a.length - 2) do |i|
    val = (a[i + 1] - a[i]).abs
    min = val if val < min
end
puts min 
