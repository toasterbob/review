# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i
arr = gets.strip.split(" ").map(&:to_i)

1.upto(n) do |x|
    n = arr.index(x) + 1
    p arr.index(n) + 1

end
