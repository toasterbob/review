#!/bin/ruby

def next_check(num, str)
    return false if str.length == 0
    length = (num + 1).to_s.length
    i = 0
    while i < str.length
        next_num = str.slice!(0, length).to_i

        if (num + 1) != next_num
            return false
        end
        num += 1
    end
    return true
end

def beautiful(str)
    n = str.length / 2
    i = 0;
    while i <= n
        num = str[0, i + 1].to_i

        return "YES #{num}" if next_check(num, str[i+1..-1])
        i += 1
    end
    return "NO"
end

q = gets.strip.to_i
for a0 in (0..q-1)
    s = gets.strip
    puts beautiful(s)
end
