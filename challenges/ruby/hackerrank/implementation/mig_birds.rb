#!/bin/ruby

n = gets.strip.to_i
types = gets.strip
types = types.split(' ').map(&:to_i)
# your code goes here

def most_common(arr)
    arr.sort!
    most_common = 0
    most_common_count = 0
    type_count = 0
    prev = 0

    arr.each do |type|
        if prev == type
            type_count += 1
        else
            prev = type
            type_count = 1
        end

        if type_count > most_common_count
            most_common = type
            most_common_count = type_count
        end
    end

    most_common
end

puts most_common(types)
