# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
arr = gets.strip.split(" ")

result = []
arr.uniq.each do |el|
    result << arr.count(el)
end

puts result.reduce(:+) - result.max
