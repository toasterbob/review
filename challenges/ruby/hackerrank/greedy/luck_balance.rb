# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(" ").map(&:to_i)
important, who_cares = [], []
n.times do
    i, j = gets.strip.split(" ").map(&:to_i)
    important << i if j == 1
    who_cares << i if j == 0
end
important.sort!
win = []
(important.length - k).times do
    win << important.shift
end

puts important.reduce(:+) + who_cares.reduce(:+) - win.reduce(:+)
