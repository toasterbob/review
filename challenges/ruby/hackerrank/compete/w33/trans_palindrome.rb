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

end

transform.keys.each do |key|
  transform[key] = transform[key].uniq.sort
end

arr = gets.strip.split(' ').map(&:to_i)
p transform
