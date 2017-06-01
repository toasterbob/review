# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
arr = gets.strip.split(" ")

result = []
arr.uniq.each do |el|
    result << arr.count(el)
end

puts result.reduce(:+) - result.max

### refactor hash

# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
arr = gets.strip.split(" ")

result = Hash.new(0)
arr.each do |el|
    result[el] += 1
end

result = result.values

puts result.reduce(:+) - result.max
