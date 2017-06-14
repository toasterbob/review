# Enter your code here. Read input from STDIN. Print output to STDOUT
def lexicographically(arr)
    0.upto(arr.length - 1) do |i|
        sub = []
        0.upto(arr.length - 1) do |j|
            sub << arr[i][j]
        end
        return "NO" if sub != sub.sort
    end
    "YES"
end

t = gets.strip.to_i

t.times do
    n = gets.strip.to_i
    arr = []
    n.times do
        sub = gets.strip.split("").sort
        arr << sub
    end
    puts lexicographically(arr)
end
