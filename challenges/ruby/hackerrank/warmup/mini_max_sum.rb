#!/bin/ruby

arr = gets.strip
arr = arr.split(' ').map(&:to_i)
arr2 = []
sum = arr.reduce(0, :+)

arr.each do |num|
    arr2 << (sum - num)
end

puts "#{arr2.min} #{arr2.max}"
