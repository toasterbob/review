# Enter your code here. Read input from STDIN. Print output to STDOUT
a, b, n = gets.split(" ").map {|i| i.to_i}

fib = [a, b]
while fib.count < n
    fib << fib[-2] + (fib[-1] * fib[-1])
end
puts fib.last
