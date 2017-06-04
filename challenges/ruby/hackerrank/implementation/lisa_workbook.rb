# Enter your code here. Read input from STDIN. Print output to STDOUT

n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

page = 1
special = 0

arr.each do |x|
    1.upto(x) do |i|
        special += 1 if i == page
        page += 1 if i % k == 0 && i != x
    end
    page += 1
end

puts special 
