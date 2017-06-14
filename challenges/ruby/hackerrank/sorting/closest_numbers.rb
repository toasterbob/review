# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
arr = gets.strip.split(" ").map(&:to_i)
arr.sort!
pairs = [arr[0], arr[1]]
min = (arr[1] - arr[0]).abs

1.upto(arr.length - 2) do |i|
    if arr[i + 1] =
end
