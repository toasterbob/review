# Enter your code here. Read input from STDIN. Print output to STDOUT
def stones(len, dif1, dif2)
    result = []

    combos = []
    (len - 1).times do
        combos << dif1
        combos << dif2
    end

    combos = combos.combination(len - 1).to_a.map { |arr| arr.reduce(:+) }.uniq
    puts combos.sort.join(" ")

end

n = gets.strip.to_i

n.times do
    length = gets.strip.to_i
    dif1 = gets.strip.to_i
    dif2 = gets.strip.to_i
    stones(length, dif1, dif2)
end
