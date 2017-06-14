# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
arr = gets.strip.split(" ").map(&:to_i)
arr.sort!
puts arr[arr.length/2]
