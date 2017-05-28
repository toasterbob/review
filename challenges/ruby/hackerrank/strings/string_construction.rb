#!/bin/ruby

n = gets.strip.to_i
for a0 in (0..n-1)
    puts gets.strip.split("").uniq.count
end
