# Enter your code here. Read input from STDIN. Print output to STDOUT
def insertionSort(arr)
    count = 0;
    1.upto(arr.length - 1) do |i|
       if arr[i] < arr[i - 1]
           j = i - 1
           hold = arr[i]
           while j >= 0
               if arr[j] > arr[i]
                  arr[i], arr[j] = arr[j], arr[i]
                  count += 1
                  i -= 1
                  j -= 1
              else
                  break
              end
           end
       end
    end
    count
end

$count = 0

def inplace_quicksort(arr)
    return arr if arr.length <= 1
    pivot = arr[arr.length - 1]
    partition = 0
    0.upto(arr.length - 1) do |i|
        if arr[i] <= pivot
            arr[i], arr[partition] = arr[partition], arr[i] if i > partition
            partition += 1 unless i == arr.length - 1
            $count += 1
        end
    end
    inplace_quicksort(arr[0...partition]) + [arr[partition]] + inplace_quicksort(arr[partition + 1..-1])
end


gets
arr = gets.strip.split(" ").map(&:to_i)
x = insertionSort(arr.dup)
inplace_quicksort(arr.dup)
p x - $count
