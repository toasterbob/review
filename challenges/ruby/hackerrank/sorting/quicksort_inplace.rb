def inplace_quicksort_stupid(arr) #stupid version just to get the proper output to pass this dumb challenge
    return arr if arr.length <= 1
    pivot = arr[arr.length - 1]
    partition = 0
    0.upto(arr.length - 1) do |i|
        if arr[i] <= pivot
            arr[i], arr[partition] = arr[partition], arr[i] if i > partition
            partition += 1 unless i == arr.length - 1
        end
    end
    [arr, partition]
end


gets
arr = gets.chomp.split(" ").map(&:to_i)
inplace_quicksort(arr)
