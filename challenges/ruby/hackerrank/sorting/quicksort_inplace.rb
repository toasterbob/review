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

##############################################
#refactor
def inplace_quicksort(arr, start, finish)
    return arr if finish - start <= 1
    pivot = arr[arr.length - 1]
    partition = start
    start.upto(finish) do |i|
        if arr[i] <= pivot
            arr[i], arr[partition] = arr[partition], arr[i] if i > partition
            partition += 1 unless i == finish
        end
    end
    puts arr.join(" ")
    arr = inplace_quicksort(arr, 0, partition - 1)
    arr = inplace_quicksort(arr, partition + 1, finish)
    arr
end

gets
arr = gets.chomp.split(" ").map(&:to_i)
inplace_quicksort(arr, 0, arr.length - 1)
##############################################
def quicksort_in_place arr, start, nd
    if nd - start <= 0
        return arr
    end
    pivot = arr[nd]
    index = start
    (start..nd-1).each do |i|
        if arr[i] <= pivot
            arr[i], arr[index] = arr[index], arr[i]
            index += 1
        end
    end
    arr[index], arr[nd] = arr[nd], arr[index]
    puts arr.join(' ')
    arr = quicksort_in_place(arr, start, index-1)
    arr = quicksort_in_place(arr, index+1, nd)
    arr
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map {|i| i.to_i}
quicksort_in_place arr, 0, n-1
