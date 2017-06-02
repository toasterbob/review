# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)
result = [nil, nil]

arr.uniq.each do |el|
    new_arr = arr.dup
    new_arr.delete(el)
    count = new_arr.combination(2).to_a.map {|a| a.reduce(:+)}.select { |num| num % k != 0}.count
    if result[0].nil? || result[0] < count
        result[0] = count
        result[1] = el
    end
end
puts result[0]
