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
    result = []
    first = a.max if factor(a, a.max)
    result << first unless first.nil?
    last = b.min if factor2(b, b.min)
    result << last unless last.nil?
    return 0 if first.nil? && last.nil?
    return 0 if a.max > b.min
    (a.max + 1).upto(b.min - 1) do |i|
        result << i if factor(a, i) && factor2(b, i)
    end
    return 0 if result.length == 1 && result[0] == 1
    return result.length
end

puts between_sets(a, b)
 
