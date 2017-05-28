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
        min, max = arr.sort
        return "YES" if min == 1 && hash.values.count(1) == 1 #single value of 1 in array
        return "NO" if hash.values.count(arr[0]) > 1 && hash.values.count(arr[1]) > 1
        low_count = hash.values.count(arr[0]) == 1 ? arr[0] : arr[1]
        return "YES" if min = max - 1 && low_count == max
        return "NO"
    end
end

s = gets.strip
result = isValid(s)
puts result;

####################################################################
#!/bin/ruby

def isValid(s)
    hash = Hash.new(0)
    s.split("").each do |char|
        hash[char] += 1
    end
    return "YES" if hash.values.uniq.length == 1

    s.split("").uniq.each do |char|
       hash[char] -= 1
       hash.delete(char) if hash[char] == 0
       return "YES" if hash.values.uniq.length == 1
       hash[char] += 1
    end
    return "NO"
end

s = gets.strip
result = isValid(s)
puts result;
