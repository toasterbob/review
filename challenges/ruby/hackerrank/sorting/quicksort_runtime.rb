# Enter your code here. Read input from STDIN. Print output to STDOUT
def  insertionSort(arr)
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

def inplace_quicksort(arr, start, finish, count)
    return arr if finish - start < 1
    pivot = arr[finish]
    partition = start
    start.upto(finish) do |i|
        if arr[i] <= pivot
            count += 1
            arr[i], arr[partition] = arr[partition], arr[i] if i > partition
            partition += 1 unless i == finish
        end
    end
    #puts arr.join(" ")
    arr = (inplace_quicksort(arr, start, partition - 1, count))
    arr = (inplace_quicksort(arr, partition + 1, finish, count))
    p count
    arr
end


gets
arr = gets.strip.split(" ").map(&:to_i)
p insertionSort(arr)
p inplace_quicksort(arr, 0, arr.length - 1, 0)
