#!/bin/ruby

s = gets.strip
t = gets.strip
k = gets.strip.to_i

i = 0
while i < t.length
    if s[i] != t[i]
        add = s.length - i - 1
        left = t.length - i - 1
        puts (k - add + left) % 2 == 0 ?  "Yes" : "No"
        i = t.length
    end
    i += 1
end
puts "Yes" if s == t
