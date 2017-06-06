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
        arr == sorted ? "yes\nswap #{a + 1} #{b + 1}" : "no"
    else
        x, y = incorrect[0], incorrect[-1]
        compare = arr[0..x - 1] + arr[x..y].reverse + arr[y + 1..-1]
        sorted == compare ? "yes\nreverse #{x + 1} #{y + 1}" : "no"
    end

end

gets
arr = gets.strip.split(" ").map(&:to_i)
puts almost_sorted(arr)

################################################################
#refactor
# Enter your code here. Read input from STDIN. Print output to STDOUT
def almost_sorted(arr)
    sorted = arr.sort
    return "yes" if arr == sorted

    i = 0
    until arr[i] != sorted[i] do
        i += 1
    end

    j = -1
    until arr[j] != sorted[j] do
        j -= 1
    end
    j += arr.length

    compare = arr[0..i - 1] + arr[i..j].reverse + arr[j + 1..-1]
    arr[i], arr[j] = arr[j], arr[i]

    return "yes\nswap #{i + 1} #{j + 1}" if arr == sorted
    sorted == compare ? "yes\nreverse #{i + 1} #{j + 1}" : "no"

end

gets
arr = gets.strip.split(" ").map(&:to_i)
puts almost_sorted(arr)
