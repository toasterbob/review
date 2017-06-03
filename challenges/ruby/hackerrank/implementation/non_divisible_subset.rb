# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

hash = Hash.new(0)
arr.delete(k)
arr.map { |el| hash[el % k] +=1 }
count = 0

arr.uniq.each do |i|
    j = k - i
    arr.count(j) <= arr.count(i) ? count += arr.count(i) : count += arr.count(j)
    arr.delete(j)
    arr.delete(i)
end

puts count
