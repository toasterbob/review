#!/bin/ruby
def biggest_palindrome(k, num)
    answers = []
    k.times do
        i = 0
        j = num.length - 1
        while i < j
            num[i].to_i
            i += 1
            j -= 1
        end
    end
    answers.length == 0 ? -1 : answers.max
end


n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
number = gets.strip 
