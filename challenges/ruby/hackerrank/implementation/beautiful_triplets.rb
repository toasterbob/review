# Enter your code here. Read input from STDIN. Print output to STDOUT

n, d = gets.strip.split(" ").map(&:to_i)
nums = Hash.new(false)
arr = gets.strip.split(" ").map { |el| nums[el.to_i] = true}
count = 0

nums.keys.each do |el|
    count += 1 if nums[el + d] && nums[el + d + d]
end

puts count
