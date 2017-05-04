#!/bin/ruby

s = gets.strip
letters = ("a".."z").to_a
hash = {}
letters.each do |char|
    hash[char] = letters.index(char) + 1
end
values = {}
total = 0
prev = nil

s.split("").each do |char|
    if prev == char
        total += hash[char]
        values[total] = true
    else
        total = hash[char]
        values[total] = true
        prev = char
    end
end

n = gets.strip.to_i
for a0 in (0..n-1)
    x = gets.strip.to_i

    if values[x]
        puts "Yes"
    else
        puts "No"
    end
end
