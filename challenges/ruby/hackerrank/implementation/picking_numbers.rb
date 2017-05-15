#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def ab_dif(arr)
    arr.sort!
    prev = nil
    prev_count = 0
    best = 0

    arr.uniq.each do |num|
        current = arr.count(num)
        if (prev) && (prev - current).abs == 1
            p [current, prev_count]
            best = current + prev_count if current + prev_count > best
        end
        prev = num
        prev_count = current
    end
    best
end

puts ab_dif(a)
