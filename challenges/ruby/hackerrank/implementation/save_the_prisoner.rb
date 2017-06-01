#!/bin/ruby

def saveThePrisoner(n, m, s)
    ((m - 1) + s) % n == 0 ? n : ((m - 1) + s) % n
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n, m, s = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    s = s.to_i
    result = saveThePrisoner(n, m, s)
    puts result;
end
