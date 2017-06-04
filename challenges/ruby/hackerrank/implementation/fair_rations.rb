#!/bin/ruby

def bread(n, arr)
    bread = 0
    # for "NO" - could sum arr and return no if odd
    0.upto(n - 2) do |i|
        j = i + 1
        if arr[i].odd?
            arr[i] += 1
            arr[j] += 1
            bread += 2
        end
    end

    arr[-1].odd? ? "NO" : bread
end

n = gets.strip.to_i
b = gets.strip.split(' ').map(&:to_i)

puts bread(n, b)
