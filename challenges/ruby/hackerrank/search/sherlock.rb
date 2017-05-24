#!/bin/ruby

def solve(a)
    right = a.reduce(:+)
    left = 0
    a.each do |a|
        right -= a
        return "YES" if right == left
        left += a
    end
    "NO"
end

T = gets.strip.to_i
for a0 in (0..T-1)
    n = gets.strip.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    result = solve(a)
    puts result;
end
