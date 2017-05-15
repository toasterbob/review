#!/bin/ruby

h = gets.strip
h = h.split(' ').map(&:to_i)
word = gets.strip

def highlighter(abc, word)
    height = 0
    arr = ("a".."z").to_a
    word.split("").each do |letter|
        letter_height = abc[arr.index(letter)]
        height = letter_height if letter_height > height
    end
    word.length * height
end

puts highlighter(h, word)
