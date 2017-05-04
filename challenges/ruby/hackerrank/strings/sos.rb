#!/bin/ruby

S = gets.strip

def sos(message)
    count = 0
    message.split("").each_with_index do |letter, i|
        if i % 3 == 0 || i % 3 == 2
            count += 1 if letter != "S"
        elsif i % 3 == 1
            count += 1 if letter != "O"
        end
    end
    count
end

puts sos(S)
