# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

hash = Hash.new(0)
arr.delete(k)
arr.map { |el| hash[el % k] +=1 }
count = 0


hash.keys.each do |i|
    j = k - i
    hash[i] <= hash[j] ? count += hash[j] : count += hash[i]
    hash.delete(j)
    hash.delete(i)
end

puts count
