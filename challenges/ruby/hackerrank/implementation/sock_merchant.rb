#!/bin/ruby

n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

def socks(pile)
    pairs = 0
    pile.uniq.each do |color|
       pairs += pile.count(color) / 2
    end
    pairs
end

puts socks(c)
