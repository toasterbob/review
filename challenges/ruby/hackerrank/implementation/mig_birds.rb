#!/bin/ruby

n = gets.strip.to_i
types = gets.strip
types = types.split(' ').map(&:to_i)
# your code goes here

def most_common(arr) #sort array first
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

def most_common2(arr) #use hash
    count = Hash.new(0)
    best = 0
    best_count = 0

    arr.each do |type|
        count[type] += 1
    end

    count.keys.each do |type|
        if count[type] > best_count
            best = type
            best_count = count[type]
        elsif count[type] == best_count
            best = type if type < best
        end
    end
    best
end

puts most_common2(types)
