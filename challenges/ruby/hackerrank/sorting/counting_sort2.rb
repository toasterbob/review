gets
arr = gets.strip.split(" ").map(&:to_i)
hash = Hash.new(0)
arr.each {|el| hash[el] += 1}
result = []
0.upto(99) do |i|
    hash[i].times {result << i}
end
puts result.join(" ")
