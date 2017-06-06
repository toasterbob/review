# Enter your code here. Read input from STDIN. Print output to STDOUT
def almost_sorted(arr)
    sorted = arr.sort
    incorrect = []

    arr.each_with_index do |el, i|
        incorrect << i if el != sorted[i]
    end

    if incorrect.length == 0
        "yes"
    elsif incorrect.length == 2
        a, b = incorrect
        arr[a], arr[b] = arr[b], arr[a]
        arr == sorted ? "yes\nswap #{a} #{b}" : "no"
    else
        x, y = incorrect.min, incorrect.max
        if (x..y).to_a == incorrect
            compare = arr[0..x - 1] + arr[x..y].reverse + arr[y + 1..-1]
            sorted == compare ? "yes\nreverse #{x} #{y}" : "no"
        end
    end
    "no"
end

gets
arr = gets.strip.split(" ").map(&:to_i)
puts almost_sorted(arr)
