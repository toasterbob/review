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
        if i == 0
            puts (add + left) <= k ? "Yes" : "No"
        else
            puts (k - (add + left)) >= 0 &&  (k - (add + left)) % 2 == 0 ?  "Yes" : "No"
        end
        flag = true
        i = t.length
    end
    i += 1
end

if s == t
    puts "Yes"
    flag = true
end

puts (k - (s.length - t.length)) >= 0 ? "Yes" : "No" unless flag 
