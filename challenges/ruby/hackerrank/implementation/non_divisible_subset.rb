# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

hash = Hash.new(0)

arr.map { |el| hash[el % k] +=1 } # I modulus everything by k, this makes the numbers more managble
hash[0] = 1 if hash[0] > 0 # we can only have one 0 (i.e. multiple of four) because any two could add together
count = 0

hash.keys.each do |i|
    hash[i] = 1 if i + i == k && hash[i] > 0 # if any number + itself adds to k, we can only keep one
    j = k - i # every i only has one set that can match to it
    hash[i] <= hash[j] ? count += hash[j] : count += hash[i] # so we choose the bigger set
    hash.delete(j) # i delete both so we don't compare it again
    hash.delete(i)
end

puts count
