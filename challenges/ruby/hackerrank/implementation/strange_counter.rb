#!/bin/ruby

t = gets.strip.to_i

timer = 3
i = 1

until (t >= timer - 2) && (t < (timer * 2) - 2)
    i += 1
    timer = timer * 2
end

real_time = timer - 2
difference = t - real_time

puts timer - difference
