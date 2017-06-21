# Enter your code here. Read input from STDIN. Print output to STDOUT
def towers(n, m)

end

t = gets.strip.to_i

t.times do
   x, y = gets.strip.split(" ").map(&:to_i)
   puts towers(x, y)
end

#(m == 1 || n % 2 == 0 ? 2 : 1)
