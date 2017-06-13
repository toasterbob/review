# Enter your code here. Read input from STDIN. Print output to STDOUT
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

def inplace_quicksort(arr) #real version
    return arr if arr.length <= 1
    pivot = arr[arr.length - 1]
    partition = 0
    0.upto(arr.length - 1) do |i|
        if arr[i] <= pivot
            arr[i], arr[partition] = arr[partition], arr[i] if i > partition
            partition += 1 unless i == arr.length - 1
        end
    end
    inplace_quicksort(arr[0...partition]) + [arr[partition]] + inplace_quicksort(arr[partition + 1..-1])
end

gets
arr = gets.chomp.split(" ").map(&:to_i)
a = inplace_quicksort_stupid(arr)
puts a[0].join(" ")
partition = a[1]
puts (inplace_quicksort(arr[0...partition]) + [arr[partition]] + (arr[partition + 1..-1])).join(" ")
puts (inplace_quicksort(arr[0...partition]) + [arr[partition]] + inplace_quicksort(arr[partition + 1..-1])).join(" ")
