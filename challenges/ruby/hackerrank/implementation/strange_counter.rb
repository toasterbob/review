#!/bin/ruby

t = gets.strip.to_i

timer = 3

until (t >= timer - 2) && (t < (timer * 2) - 2)
    timer *= 2
end

real_time = timer - 2
difference = t - real_time

puts timer - difference
