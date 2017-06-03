#!/bin/ruby

q = gets.strip.to_i
for a0 in (0..q-1)
    n = gets.strip.to_i
    b = Array.new(n)
    for b_i in (0..n-1)
        b_t = gets.strip
        b[b_i] = b_t.split(' ').map(&:to_i)
    end
    counts = Hash.new(0)
    bowls = Hash.new(0)

    b.each_with_index do |arr, i|
        bowls[i] = arr.count
        arr.each_with_index do |el, j|
            counts[j] += el
        end
    end
    puts counts.values.sort == bowls.values.sort ? "Possible" : "Impossible"

end
