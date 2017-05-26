#!/bin/ruby
def decent_num(n)
    return -1 if n < 3 || n == 4 || n == 7

    threes = n / 3
    x = n % 3

    case x
    when 0
        return "5" * n
    when 1
        threes -= 3
    when 2
        threes -= 1
    end

    fives = (n - (threes * 3))/5

    ("5" * (threes * 3)) + ("3" * (fives * 5))
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts decent_num(n)
end
