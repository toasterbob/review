#!/bin/ruby

def patternCount(str)
    i = 0;
    count = 0
    while i < str.length
       if str[i] == "1" && str[i + 1] == "0"
           i += 1
           i += 1 while str[i] == "0"
           count += 1 if str[i] == "1"
       else
           i += 1
       end
    end
    count
end

q = gets.strip.to_i
for a0 in (0..q-1)
    s = gets.strip
    result = patternCount(s)
    puts result;
end
