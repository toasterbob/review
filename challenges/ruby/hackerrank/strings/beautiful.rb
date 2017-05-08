#!/bin/ruby

def next_check(num, str)
    length = (num + 1).to_s.length
    return false if str.length < length
    i = 0
    while i < str.length
        next_num = str.slice!(0, length).to_i

        if (num + 1) != next_num
            return false
        end
        num += 1
        length = (num + 1).to_s.length
    end
    return true
end

def beautiful(str)
    return "NO" if str.length < 2
    n = str.length / 2
    i = 0;
    while i <= n
        num = str[0, i + 1].to_i

        return "YES #{num}" if next_check(num, str[i+1..-1])
        i += 1
    end
    return "NO"
end 
# q = gets.strip.to_i
# for a0 in (0..q-1)
    arr = [ "1",
          "2",
          "33",
          "4445",
          "8889",
          "8910"]
    arr.each do |s|
      puts beautiful(s)
    end
# end
