def  insertionSort( ar)
    count = ar.length - 1
    added = ar[-1]
    already_done = false

    count.downto(0) do |i|

        if i == 0 && !already_done
            ar[i] = added
        elsif ar[i - 1] >= added && i > 0
            ar[i] = ar[i - 1]
            puts ar.join(" ")
        else
            ar[i] = added unless already_done
            already_done = true
        end
    end
    puts ar.join(" ")

end


ar = "2 3 4 5 6 7 8 9 10 1".strip.split.map {|i| i.to_i}
puts ar
insertionSort( ar )

#redo

def  insertionSort(arr)
    1.upto(arr.length - 1) do |i|
       if arr[i] < arr[i - 1]
           j = 0
           while j < i
              if arr[j] < arr[i]
                  j += 1
              else
                  insert = arr.slice!(i)
                  arr = arr[0...j] + [insert] + arr[j..-1]
                  break
              end
           end
       end
       puts arr.join(" ")
    end
end
cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort(ar)   
