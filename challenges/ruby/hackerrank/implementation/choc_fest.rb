#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n,c,m = gets.strip.split(' ').map(&:to_i)
    chocolates = n/c
    wrapers = chocolates
    while wrapers >= m
        wrapers -= m
        chocolates += 1
        wrapers += 1
    end
    p chocolates
end
