#!/bin/ruby

def solve(n, p)
    back = (n - p) / 2
    back += 1 if (n % 2 == 0 && n - 1 == p) #edge case where n is even and p is one less
    front = (p / 2)
    [back, front].min
end

n = gets.strip.to_i
p = gets.strip.to_i
result = solve(n, p)
puts result;
