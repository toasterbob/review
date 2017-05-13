#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def div_sum_pairs(n, k, arr)
    i = 0
    total = 0
    while i < n - 1
        j = i + 1
        while j < n
            total += 1 if ((arr[i] + arr[j]) % k) == 0
            j += 1
        end
       i += 1
    end
    total
end

def div_sum_pairs2(n, k, arr) #more concise loops
    total = 0
    (0...(n - 1)).each do |i|
        ((i + 1)...n).each do |j|
            total += 1 if ((arr[i] + arr[j]) % k) == 0
        end
    end
    total
end

puts div_sum_pairs(n, k ,a)
