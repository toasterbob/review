#!/bin/ruby
def three_five(n)
    result = []
    (3...n).each do |i|
        result << i if i % 3 == 0 || i % 5 == 0
    end
    result.reduce(:+)
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts three_five(n)
end
