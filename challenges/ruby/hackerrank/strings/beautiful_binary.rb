#!/bin/ruby

def minSteps(n, b)
    i = 0
    count = 0
    while i < n
        if b[i] == "0" && b[i + 1] == "1" && b [i + 2] == "0"
            count += 1
            i += 2
        end
        i += 1
    end
    count
end

n = gets.strip.to_i
b = gets.strip
result = minSteps(n, b)
puts result;

######better

#!/bin/ruby

def minSteps(n, b)
    b.gsub("010", "z").count("z")
end

n = gets.strip.to_i
b = gets.strip
result = minSteps(n, b)
puts result;
