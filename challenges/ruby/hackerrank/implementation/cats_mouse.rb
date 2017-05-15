#!/bin/ruby

def cat_mouse(cat1, cat2, mouse)
    distance1 = (mouse - cat1).abs
    distance2 = (mouse - cat2).abs
    return "Cat A" if distance1 < distance2
    return "Cat B" if distance2 < distance1
    "Mouse C"
end


q = gets.strip.to_i
for a0 in (0..q-1)
    x,y,z = gets.strip.split(' ')
    x = x.to_i
    y = y.to_i
    z = z.to_i
    puts cat_mouse(x, y, z)
end
