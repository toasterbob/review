#!/bin/ruby

n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

count = 0
i = 0

while i < n - 1
    if c[i + 2] && c[i + 2] == 0
        i += 2
    else
        i += 1
    end
    count += 1
end

puts count
