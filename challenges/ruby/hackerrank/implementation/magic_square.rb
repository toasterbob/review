#!/bin/ruby

s = Array.new(3)
for s_i in (0..3-1)
    s_t = gets.strip
    s[s_i] = s_t.split(' ').map(&:to_i)
end
#  Print the minimum cost of converting 's' into a magic square
def magic_square(arr)
    cost = 0
    cost += (5 - arr[1][1]).abs #middle square always has to be five

    combos = []

    loop1 = [2, 9, 4, 3, 8, 1, 6, 7]  # always the ring order backwards  - evens always have to be in the corner
    loop2 = [2, 7, 6, 1, 8, 3, 4, 9] # always the ring orderforwards

    compare = [arr[0], arr[1][2], arr[2].reverse, arr[1][0]].flatten

    4.times do
        dif1 = 0
        dif2 = 0

        (0..7).each do |i|
            dif1 += (loop1[i] - compare[i]).abs
            dif2 += (loop2[i] - compare[i]).abs
        end
        combos << dif1 << dif2
        loop1 = loop1.rotate(2)
        loop2 = loop2.rotate(2)
    end
    
    cost + combos.min
end

puts magic_square(s)
