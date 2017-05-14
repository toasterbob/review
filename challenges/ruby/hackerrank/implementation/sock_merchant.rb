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

def socks2(pile) #use a hash O(n)
    pairs = 0
    sock_hash = Hash.new(0)
    pile.each do |color|
       sock_hash[color] += 1
       pairs += 1 if sock_hash[color] % 2 == 0
    end
    pairs
end


puts socks(c)
