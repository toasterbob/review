#!/bin/ruby

k = gets.strip.to_i
message = gets.strip
n = gets.strip.to_i

def caesar(message, n)
    result = ""
    message.split("").each do |char|
        if char.downcase >= "a" && char.downcase <= "z"
            n.times {char.next!}
            result += char[-1]
        else
            result += char
        end
    end
    result
end

puts caesar(message, n)

###########################

l = gets.to_i
s = gets.chomp.strip
k= gets.to_i
a = ("a".."z").to_a + ("A".."Z").to_a
0.upto(l-1){|i| k.times{s[i]=s[i].next[0]} if a.include? s[i]}
puts s
