#!/bin/ruby

s = gets.strip.split("")
n = s.length
squares = [1, 4, 9, 16, 25, 36, 49, 64, 81]

i = 0
while i < 9

    if n <= squares[i]
        if n == squares[i]
            row, col = i + 1, i + 1
            i = 10
        else
            if i * (i + 1) > n
                row, col = i, i + 1
            else
                row, col = i + 1, i + 1
            end
            i = 10
        end
    end
    i += 1
end

matrix = []
result = []

row.times do
    matrix << s.slice!(0, col)
end


(matrix[0].length).times do |i|
    code = ""
    matrix.each do |arr|
        code += arr[i] if arr[i]
    end
    result << code
end

puts result.join(" ")
