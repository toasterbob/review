#!/bin/ruby
def  lonelyinteger(arr)
    arr.sort!
    i = 0
    while i < arr.length do
        return arr[i] if arr[i] != arr[i + 1]
        i += 2
    end

end
a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
print lonelyinteger(b)

def  lonelyinteger(arr) #using bitwise
    result = 0
    arr.each do |num|
        result ^= num #all numbers cancel each other out 
    end
    result
end
