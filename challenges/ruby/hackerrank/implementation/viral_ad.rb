# Enter your code here. Read input from STDIN. Print output to STDOUT

def viral(n)
    day = 5/2
    total = 0
    n.times do |i|
        total += day
        day = (day * 3) / 2
    end
    total
end

puts viral(gets.strip.to_i)
