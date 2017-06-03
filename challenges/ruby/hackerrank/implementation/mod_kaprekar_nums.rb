# Enter your code here. Read input from STDIN. Print output to STDOUT
kaprekars = Hash.new
kaprekars[1] = true

start = gets.strip.to_i
finish = gets.strip.to_i
result = []

start.upto(finish) do |i|

    squared = i * i

    str = squared.to_s
    str = "0" + str if str.length % 2 == 1
    length = str.length
    half = length / 2 - 1
    x, y = str[0..half].to_i, str[half + 1..length - 1].to_i
    #p [x, y]
    result << i if x + y == i
end

puts result.empty? ? "INVALID RANGE" : result.join(" ")
