#!/bin/ruby

s = gets.strip
t = gets.strip
k = gets.strip.to_i

i = 0
flag = false

while i < t.length
    if s[i] != t[i]
        add = s.length - i
        left = t.length - i
        puts (k - (add + left)) >= 0 &&  (k - (add + left)) % 2 == 0 ?  "Yes" : "No"
        flag = true
        i = t.length
    end
    i += 1
end

if s == t
    puts "Yes" if s == t
    flag = true
end

puts (k - (s.length - t.length)) % 2 == 0 ? "Yes" : "No" unless flag 
