#!/bin/ruby
def abs_perm(n, k)
    nums = 1.upto(n).to_a

    result = []
    nums.each do |num|
        find1 = (num - k).abs
        find2 = num + k
        if nums.include?(find1)
            result << find1
        elsif nums.include?(find2)
            result << find2
        else
            return -1
        end
    end
    result.join(" ")
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    puts abs_perm(n, k)
end
