#!/bin/ruby

def cuts(arr)
    result = [arr.length]

    while arr.length > 1
        cut = arr.min
        arr = arr.map { |el| el - cut }.select { |el| el > 0}
        result << arr.length if arr.length > 0
    end
    result
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

puts cuts(arr)
