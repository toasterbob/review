#!/bin/ruby

n,m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)

def factor(arr, factor)
    arr.each do  |num|
        return false if factor % num != 0
    end
    return true
end

def factor2(arr, factor)
    arr.each do  |num|
        return false if num % factor != 0
    end
    return true
end

def between_sets(a, b)
    first = a.max if factor(a, a.max)
    last = b.min if factor2(b, b.min)
    return 0 if first.nil? or last.nil?
    result = [first, last]
    (first + 1).upto(last - 1) do |i|
        result << i if factor(a, i) && factor2(b, i)
    end
    return result.length
end

puts between_sets(a, b)
