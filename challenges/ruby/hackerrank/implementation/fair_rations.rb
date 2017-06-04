#!/bin/ruby

def bread(n, arr)
    return "NO" if n == 2 && (arr[0] - arr[1]).abs == 1
    bread = 0

    0.upto(n - 1) do |i|
        j = i + 1
        if arr[i] % 2 == 1 && i != (n - 1)
            arr[i] += 1
            arr[j] += 1
            bread += 2
        end
    end
    arr[-1] % 2 == 1 ? "NO" : bread
end

n = gets.strip.to_i
b = gets.strip.split(' ').map(&:to_i)

puts bread(n, b)
