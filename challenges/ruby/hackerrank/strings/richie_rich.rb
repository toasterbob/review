#!/bin/ruby
def checker(num)
    differences = 0
    i = 0
    j = num.length - 1
    while i < j
        differences += 1 if num[i] != num[j]
        i += 1
        j -= 1
    end
    differences
end

def biggest_palindrome(k, num)
    dif = checker(num)
    return -1 if dif > k
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
puts biggest_palindrome(k, number)
