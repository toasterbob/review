gets
arr = gets.strip.split(" ").map(&:to_i)
hash = Hash.new(0)
arr.each {|el| hash[el] += 1}
result = []
0.upto(99) do |i|
    hash[i].times {result << i}
end
puts result.join(" ")

##########
gets
arr = gets.strip.split(" ").map(&:to_i)
arr2 = Array.new(100, 0)
arr.each { |el| arr2[el] += 1 }
result = []
arr2.each_with_index { |el, i| el.times { result << i } }
puts result.join(" ")
