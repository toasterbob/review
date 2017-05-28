#!/bin/ruby

def isValid(s)
    hash = Hash.new(0)
    s.split("").each do |char|
        hash[char] += 1
    end
    arr = hash.values.uniq
    return "YES" if arr.length < 2
    return "NO" if arr.length > 2
    if arr.length == 2
        min = [arr.count(arr[0]), arr.count(arr[1])].min
        return "NO" if min != 1

        max = [arr.count(arr[0]), arr.count(arr[1])].max
    end
end

s = gets.strip
result = isValid(s)
puts result;
