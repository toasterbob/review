#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

pos, neg, zero = 0, 0, 0
arr.each do |num|
    pos += 1 if num > 0
    neg += 1 if num < 0
    zero += 1 if num == 0
end

puts '%.6f' % (pos.to_f/arr.length)
puts '%.6f' % (neg.to_f/arr.length)
puts '%.6f' % (zero.to_f/arr.length)
