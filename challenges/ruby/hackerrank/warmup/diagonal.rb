#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

diag1, diag2 = 0, 0
pos1 = 0
pos2 = a[0].length - 1

a.each do |row|
    diag1 += row[pos1]
    diag2 += row[pos2]
    pos1 += 1
    pos2 -= 1
end
puts (diag1 - diag2).abs
