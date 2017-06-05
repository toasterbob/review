# Enter your code here. Read input from STDIN. Print output to STDOUT
def pairs(str)
    result = []
    str.split("").uniq.each do |el|
        x = str.count(el)
        result << x if x > 1
    end
    result.empty? ? 0 : result.reduce(1, :*)
end

n = gets.strip.to_i

n.times do
    str = gets.strip
    puts pairs(str)
end
