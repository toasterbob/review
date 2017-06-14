# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
sides = gets.strip.split(" ").map(&:to_i).sort
hash = Hash.new(0)
sides.each do |side|
    hash[side] += 1
end
p hash
uniq = hash.keys.sort.reverse

equilateral, isosceles, scalene = -1, -1, -1

uniq.each do |side|
    equilateral = side * 3 if equilateral == -1 && hash[side] >= 3
end

puts [equilateral, isosceles, scalene].max
