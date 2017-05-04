#!/bin/ruby

s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apple = gets.strip
apple = apple.split(' ').map(&:to_i)
orange = gets.strip
orange = orange.split(' ').map(&:to_i)

a_count, o_count = 0, 0

apple.each do |app|
   a_count += 1 if app + a >= s && app + a <= t
end
puts a_count

orange.each do |org|
    o_count += 1 if org + b >=s && org + b <= t
end
puts o_count
