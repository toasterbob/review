# Enter your code here. Read input from STDIN. Print output to STDOUT
def towers(a, b)

end

n = gets.strip.to_i

n.times do
   x, y = gets.strip.split(" ").map(&:to_i)
    puts towers(x, y)
end
