#!/bin/ruby

x1,v1,x2,v2 = "21 6 47 3".split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i

def kanga(x1, v1, x2, v2)
    return "NO" if x1 >= x2 && v1 > v2
    return "NO" if x2 >= x1 && v2 > v1

    if x1 > x2
        while x1 >= x2
            return "YES" if x1 == x2
            x1 += v1
            x2 += v2
        end
    else
        while x1 <= x2
            return "YES" if x1 == x2
            x1 += v1
            x2 += v2
        end
    end
    return "NO"
end

puts kanga(x1, v1, x2, v2)
