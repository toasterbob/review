# Enter your code here. Read input from STDIN. Print output to STDOUT
def pairs(str)
    count = 0
    hash = Hash.new { |h, k| h[k] = []}
    str.split("").each_with_index do |el, i|
        hash[el] << i
    end

    hash = hash.keep_if { |k, v| v.length > 1}
    p hash
    #result.empty? ? 0 : result.reduce(1, :*)
end

n = gets.strip.to_i

n.times do
    str = gets.strip
    puts pairs(str)
end
