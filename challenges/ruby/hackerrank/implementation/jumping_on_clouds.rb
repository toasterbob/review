#!/bin/ruby
def cloud_jumper(arr, distance)
    energy = 100
    cloud = 0 + distance % arr.length
    while cloud != 0
        energy -= 1
        energy -= 2 if arr[cloud] == 1
        cloud += distance
        cloud = cloud % arr.length
    end
    energy -= 2 if arr[cloud] == 1
    energy - 1
end

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
puts cloud_jumper(c, k)
