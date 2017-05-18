#!/usr/bin/ruby
def maxXor(l, r)
    max = 0
    l.upto(r) do |i|
        l.upto(r) do |j|
            bitwise = i ^ j
            max = bitwise if bitwise > max
        end
    end
    max
end
l = gets.to_i
r = gets.to_i
print maxXor(l, r) 
