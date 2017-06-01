#!/bin/ruby

def canceled?(threshold, times)
    count = 0
    times.each do |time|
        count += 1 if time <= 0
    end
    count >= threshold ? "NO" : "YES"
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    puts canceled?(k, a)
end
