# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

hash = Hash.new(0)

arr.map { |el| hash[el % k] +=1 }
hash[0] = 1 if hash[0] > 0
count = 0


hash.keys.each do |i|
    hash[i] = 1 if i + i == k && hash[i] > 0
    j = k - i
    hash[i] <= hash[j] ? count += hash[j] : count += hash[i]
    hash.delete(j)
    hash.delete(i)
end

if k == 1
    puts 1
else
    puts count == 0 ? 1 : count
end
