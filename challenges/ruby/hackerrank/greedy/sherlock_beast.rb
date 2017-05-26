#!/bin/ruby
def decent_num(n)
    num = ""
    fives = n/3
    num += "5" * (fives * 3) unless n % 5 == 0
    n -= (fives * 3) unless n % 5 == 0
    threes = n/5
    num += ("3" * (threes * 5))
    n -= (threes * 5)
    n == 0 ? num.to_i : -1
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts decent_num(n)
end
