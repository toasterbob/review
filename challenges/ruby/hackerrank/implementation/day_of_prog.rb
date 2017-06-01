#!/bin/ruby

def solve(year)
    eight_months = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31
    if year < 1918 #Julian
        eight_months += 1 if year % 4 == 0
        day = 256 - eight_months
    elsif year == 1918
        eight_months = 32 + 14 + 31 + 30 + 31 + 30 + 31 + 31
        day = 256 - eight_months
    else
        eight_months += 1 if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
        day = 256 - eight_months
    end
    "#{day}.09.#{year}"
end

year = gets.strip.to_i
result = solve(year)
puts result;

require 'date'
Date.leap?(2000) #true
Date.leap?(1900) #false
