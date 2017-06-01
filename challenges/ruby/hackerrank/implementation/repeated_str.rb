#!/bin/ruby

s = gets.strip
n = gets.strip.to_i

remainder = n % s.length
times = n / s.length

puts (s.count("a") * times) + s.slice(0, remainder).count("a")
