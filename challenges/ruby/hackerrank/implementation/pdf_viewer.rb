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

# word.each_byte do |b|
#     if h[b-97] > max
#       max = h[b-97]
#     end
# end

# heights = gets.strip.split.map(&:to_i)
# word = gets.strip.chars.map {|x| heights[x.ord - 'a'.ord]}
# puts word.max * word.length
