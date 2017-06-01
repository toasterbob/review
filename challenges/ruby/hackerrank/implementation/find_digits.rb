#!/bin/ruby

def digit_check(num)
    count = 0
    num.to_s.split("").each do |n|
        next if n == "0"
        count += 1 if num % n.to_i == 0
    end
    count
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts digit_check(n)
end
