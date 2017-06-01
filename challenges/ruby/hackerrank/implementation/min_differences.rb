#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

distance = Hash.new
min = nil

a.each_with_index do |num, i|
    if distance[num]
        length = (i - distance[num]).abs
        distance[num] = i
        min = length if min.nil? || min > length
    else
       distance[num] = i
    end
end

puts min.nil? ? -1 : min 
