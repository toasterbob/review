# Enter your code here. Read input from STDIN. Print output to STDOUT
def inplace_quicksort(arr)
    pivot = arr[arr.length - 1]
    partition = 0
    0.upto(arr.length - 2) do |i|
        if arr[i] <= pivot
            partition += 1
        elsif i == partition
            # do nothing
        else
           arr[i], arr[i + 1] = arr[i + 1], arr[i]
        end
    end
    p arr
end

gets
arr = gets.chomp.split(" ").map(&:to_i)
inplace_quicksort(arr)
