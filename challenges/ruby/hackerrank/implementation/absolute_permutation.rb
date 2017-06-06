#!/bin/ruby
def abs_perm(n, k)
    hash = Hash.new(false)
    1.upto(n).to_a.map { |el| hash[el] = true }

    result = []
    hash.keys.each do |num|
        find = num - k
        find2 = num + k

        if hash[find]
            result << find
            hash[find] = false
        elsif hash[find2]
            result << find2
            hash[find2] = false
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
