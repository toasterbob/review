def quickSort( ar)
    return ar if ar.length <= 1
    left, right = [], []
    1.upto(ar.length - 1) do |i|
        if ar[i] > ar[0]
            right << ar[i]
        else
            left << ar[i]
        end
    end
    arr = quickSort(left).concat([ar[0]]).concat(quickSort(right))
    puts arr.join(" ")
    arr
end
cnt = gets.to_i
ar = STDIN.gets.chomp.split(" ").map {|i| i.to_i}
quickSort(ar)
