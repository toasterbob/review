#!/bin/ruby

def isValid(s)
    hash = Hash.new(0)
    s.split("").each do |char|
        hash[char] += 1
    end
    arr = hash.values.uniq

    return "YES" if arr.length < 2
    return "NO" if arr.length > 2 #no if there is more than 2 unique values
    if arr.length == 2
        min_count = arr.min
        return "YES" if min_count == 1 && hash.values.count(1) == 1 #single value of 1 in array
        return "NO" if hash.values.count(arr[0]) > 1 && hash.values.count(arr[1]) > 1
        keys = hash.keys
        min, max = keys.sort

    end
end

s = gets.strip
result = isValid(s)
puts result;
