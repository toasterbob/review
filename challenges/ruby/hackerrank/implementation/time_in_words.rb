#!/bin/ruby

h = gets.strip.to_i
m = gets.strip.to_i

hours = %w(zero one two three four five six seven eight nine ten eleven twelve)
mins = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty)
1.upto(9) do |i|
    mins << "twenty #{mins[i]}"
end

h2 = h != 12 ? h + 1 : 1
hour = m <= 30 ? hours[h] : hours[h2]

if m == 0
    puts "#{hour} o' clock"
elsif m % 15 == 0
    puts "quarter past #{hour}" if m == 15
    puts "half past #{hour}" if m == 30
    puts "quarter to #{hour}" if m == 45
elsif m < 30
    puts "#{mins[m]} minutes past #{hour}"
elsif m > 30
    m = 60 - m
    puts "#{mins[m]} minutes to #{hour}"
end
