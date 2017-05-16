#!/bin/ruby

n = gets.strip.to_i
scores = gets.strip
scores = scores.split(' ').map(&:to_i)
m = gets.strip.to_i
alice = gets.strip
alice = alice.split(' ').map(&:to_i)
# your code goes here

def ranking(scores, alice)
    prev = nil
    place = 0
    return 1 if alice > scores[0]

    scores.each do |score|
        place += 1 unless (prev && prev == score)
        return place if prev && (alice < prev && alice >= score)
        prev = score
    end

    return place + 1
end

alice.each do |level|
    puts ranking(scores, level)
end 
