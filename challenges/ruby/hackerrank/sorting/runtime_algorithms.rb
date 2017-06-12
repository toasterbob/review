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
    p count
end
cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort(ar)   
