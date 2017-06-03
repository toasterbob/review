#!/bin/ruby

n,k = gets.strip.split(' ').map(&:to_i)

rowQ, colQ = gets.strip.split(' ').map(&:to_i)

obstacles = []
for a0 in (0..k-1)
    rObstacle,cObstacle = gets.strip.split(' ').map(&:to_i)
    obstacles << [rObstacle, cObstacle]
end

p obstacles
