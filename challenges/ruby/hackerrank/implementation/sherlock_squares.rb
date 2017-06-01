# Enter your code here. Read input from STDIN. Print output to STDOUT
# not as good of time complexity
squares = (1..31622).map { |n| n ** 2 }

gets.to_i.times do
  a, b = gets.split.map(&:to_i)
  puts squares.select { |n| n.between?(a, b) }.size
end
##################################################

#O(1) time 
def squares(x, y)
    count = 0
    x, y = Math.sqrt(x), Math.sqrt(y)
    count += 1 if x.floor == x # num is squared
    count += 1 if y.floor == y
    count += 1 if x.ceil != x.floor

    count += (y.ceil - x.ceil - 1)
    count
end

n = gets.strip.to_i

n.times do
    x, y = gets.strip.split(" ").map(&:to_i)
    puts squares(x, y)
end
