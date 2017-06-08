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
    insert = arr.last
    i = arr.length - 1
    while i >= 0
        if arr[i - 1] > insert && i != 0
            arr[i] = arr[i - 1]
            puts arr.join(" ")
        else
            arr[i] = insert
            break
        end
        i -= 1
    end
    puts arr.join(" ")
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
