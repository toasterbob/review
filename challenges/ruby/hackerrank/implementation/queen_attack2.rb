#!/bin/ruby
def go(direction, pos, obs, board)
    count = 0
    pos[0] += direction[0]
    pos[1] += direction[1]

    condition1 = pos[0] > board || pos[1] > board
    condition2 = pos[0] < 0 || pos[1] < 0

    while !(obs.include?(pos) || pos[0] > board || pos[1] > board || pos[0] < 0 || pos[1] < 0)
        p pos
        count += 1
        pos[0] += direction[0]
        pos[1] += direction[1]

    end

    count
end

def queen(board, pos, obs)
    count = 0
    directions = [[1, 0], [0, 1], [-1, 0], [0, -1], [1, 1], [-1, -1], [-1, 1], [1, -1]]

    directions.each do |direction|
        count += go(direction, pos, obs, board)
    end

    count
end

n,k = gets.strip.split(' ').map(&:to_i)

q_pos = gets.strip.split(' ').map(&:to_i)

obstacles = []
for a0 in (0..k-1)
    rObstacle,cObstacle = gets.strip.split(' ').map(&:to_i)
    obstacles << [rObstacle, cObstacle]
end

p queen(n, q_pos, obstacles)
