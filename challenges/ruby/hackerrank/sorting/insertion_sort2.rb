#!/usr/bin/ruby
def  insertionSort( ar)
    count = ar.length - 1
    added = ar[-1]
    already_done = false

    count.downto(0) do |i|

        if i == 0 && !already_done
            ar[i] = added
        elsif ar[i - 1] >= added && i > 0
            ar[i] = ar[i - 1]
        else
            ar[i] = added unless already_done
            already_done = true
        end
    end
    ar
end

def  insertionSort2(ar)
    i = 2;
    while i <= ar.length
        ar = insertionSort(ar[0, i]) + ar[i, ar.length - i]
        puts ar.join(" ")
        i += 1;
    end
end

cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort2(ar)

#refactor
#!/usr/bin/ruby
#!/usr/bin/ruby
def  insertionSort(arr)
    1.upto(arr.length - 1) do |i|
       if arr[i] < arr[i - 1]
           j = i - 1
           while j >= 0
              if arr[j] > arr[i] && j != 0
                  j -= 1
              else
                  insert = arr.slice!(i)
                  arr = arr[0..j] + [insert] + arr[j+1..-1]
                  #arr[j + 1], arr[i] = arr[i], arr[j + 1] #swap
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
