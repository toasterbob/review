def counter(arr)
    hash = Hash.new(0)
    arr.each {|el| hash[el] += 1 }
    0.upto(99).to_a.map { |el| hash[el] }.join(" ")
end

gets
arr = gets.strip.split(" ").map(&:to_i)
puts counter(arr)
