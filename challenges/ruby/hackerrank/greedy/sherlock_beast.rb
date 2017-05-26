#!/bin/ruby
def decent_num(n)
    num = ""
    x = n
    fives = 0
    return "5" * n if n % 15 == 0

    while x >= 29
        fives += 5
        x -= 15
    end

    while x >= 3 && x % 5 != 0
        fives += 1
        x -= 3
    end

    num += "5" * (fives * 3)

    threes = x/5
    while threes > 3
        threes -= 3
        num += "5" * 15
        x -= 15
    end

    num += ("3" * (threes * 5))
    x -= (threes * 5)

    x == 0 ? num.to_i : -1
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts decent_num(n)
end
