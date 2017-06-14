#!/bin/ruby

n,k,m = gets.strip.split(' ').map(&:to_i)
transform = Hash.new {|h, k| h[k] = []}

for a0 in (0..k-1)
    x,y = gets.strip.split(' ').map(&:to_i)
    transform[x] += transform[y]
    transform[y] += transform[x]

    transform[x].push(y)
    transform[y].push(x)

    transform[x].each {|el| transform[el].push(y)}
    transform[y].each {|el| transform[el].push(x)}

    transform[x] = transform[x].uniq
    transform[y] = transform[y].uniq
end

arr = gets.strip.split(' ').map(&:to_i)
