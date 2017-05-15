#!/bin/ruby

s = Array.new(3)
for s_i in (0..3-1)
    s_t = gets.strip
    s[s_i] = s_t.split(' ').map(&:to_i)
end
#  Print the minimum cost of converting 's' into a magic square
def magic_square(arr)
    values = []

    arr.each do |row| #rows
        values << row.reduce(:+)
    end

    arr.transpose.each do |row| #columns
        values << row.reduce(:+)
    end

    values << [arr[0][0], arr[1][1], arr[2][2]].reduce(:+)
    values << [arr[2][0], arr[1][1], arr[0][2]].reduce(:+)
    p values
    return (values.min - values.max).abs
end

puts magic_square(s)
