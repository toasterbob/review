# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i
arr = []

n.times do
    time = gets.strip.split(" ").map(&:to_i).reduce(:+)
    arr << time
end

hash = Hash.new {|h, v| h[v] = []}
arr.each_with_index {|el, i| hash[el].push(i + 1)}

result = []

hash.keys.sort.each do |key|

    result += hash[key].sort
end

puts result.join(" ")

#**************************************
