# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i
arr1 = gets.strip.split(" ").map(&:to_i).sort
arr2 = gets.strip.split(" ").map(&:to_i).sort

hash1 = Hash.new(0)
hash2 = Hash.new(0)
pairs = 0

arr1.each { |el| hash1[el] += 1 }
arr2.each { |el| hash2[el] += 1 }

hash1.keys.each do |key|
    pairs += [hash1[key], hash2[key]].min if hash1[key] > 0 && hash2[key] > 0
end

if pairs < n
    pairs += 1
elsif pairs == n
    pairs -= 1
end
puts pairs
