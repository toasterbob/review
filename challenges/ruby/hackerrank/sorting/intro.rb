value = gets.strip.to_i
gets
arr = gets.strip.split(" ").map(&:to_i)

puts arr.index(value)
