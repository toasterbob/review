#!/bin/ruby

s = gets.strip
words = 1
s.split("").each do |char|
    words += 1 if char == char.upcase
end
puts words

#########################

s = gets.strip
puts s.split(/[A-Z]/).count

##############################

p gets.count("A-Z") + 1
