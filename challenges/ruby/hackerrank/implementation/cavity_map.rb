#!/bin/ruby

n = gets.strip.to_i
grid = Array.new(n)
for grid_i in (0..n-1)
    grid[grid_i] = gets.strip
end

1.upto(n - 2) do |i|
    1.upto(grid[i].length - 2) do |j|
        compare = grid[i][j]
        up, down = grid[i - 1][j], grid[i + 1][j]
        left, right = grid[i][j - 1], grid[i][j + 1]
        cond1 = compare > up && compare > down
        cond2 = compare > left && compare > right
        grid[i][j] = "X" if  cond1 && cond2
    end
end

puts grid
