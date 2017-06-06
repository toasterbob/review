# Enter your code here. Read input from STDIN. Print output to STDOUT
def pairs(str)
    count = 0
    hash = Hash.new(0)

    0.upto(str.length - 1) do |i|
        (i).upto(str.length - 1) do |j|
            sub_str = str[i..j].split("").sort.join("")
            hash[sub_str] += 1
        end
    end

    #hash = hash.keep_if { |k, v| v > 1}
    total = 0

    hash.values.each do |val|
        new_val = 0
        (val - 1).downto(1) do |i|
            new_val += i
        end
        total += new_val
    end
    total
end

n = gets.strip.to_i

n.times do
    str = gets.strip
    puts pairs(str)
end

###########################################
#refactor 
# Enter your code here. Read input from STDIN. Print output to STDOUT
def pairs(str)
    hash = Hash.new(0)

    0.upto(str.length - 1) do |i|
        (i).upto(str.length - 1) do |j|
            sub_str = str[i..j].split("").sort.join("")
            hash[sub_str] += 1
        end
    end

    #hash = hash.keep_if { |k, v| v > 1}
    total = 0

    hash.values.reduce(0) { |sum, v| sum + (v * (v - 1)/2)}
end

n = gets.strip.to_i

n.times do
    str = gets.strip
    puts pairs(str)
end
