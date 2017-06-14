n, k = gets.strip.split(" ").map(&:to_i)
important, who_cares, win = [], [], []

n.times do
    i, j = gets.strip.split(" ").map(&:to_i)
    important << i if j == 1
    who_cares << i if j == 0
end

important.sort!

(important.length - k).times do
    win << important.shift
end

puts important.reduce(0, :+) + who_cares.reduce(0, :+) - win.reduce(0, :+)
