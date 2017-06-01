# Enter your code here. Read input from STDIN. Print output to STDOUT

n, d = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

nums = Hash.new(false)
count = 0

arr.each do |el|
    nums[el] = true
end

arr.each do |el|
    count += 1 if nums[el + d] && nums[el + d + d]
end

puts count
