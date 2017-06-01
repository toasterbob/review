# Enter your code here. Read input from STDIN. Print output to STDOUT
def squares(x, y)
    count = 0
    x, y = Math.sqrt(x), Math.sqrt(y)
    count += 1 if x.floor == x # num is squared
    count += 1 if y.floor == y
    count += 1 if x.ceil != x.floor

    count += (x.ceil...y.ceil).to_a.count - 1
    count
end

n = gets.strip.to_i

n.times do
    x, y = gets.strip.split(" ").map(&:to_i)
    puts squares(x, y)
end
