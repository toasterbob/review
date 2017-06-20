# Enter your code here. Read input from STDIN. Print output to STDOUT
def permutation(arr, k)
    sorted = arr.sort.reverse
    return arr.join(" ") if arr == sorted
    i = 0
    j = 0
    hash = Hash.new
    arr.each_with_index { |el, i| hash[el] = i }

    while j < k && i < arr.length
       biggest = sorted.shift

       idx2 = hash[biggest]

       if idx2 == i
           i += 1
       else
           hold = arr[i]
           arr[i], arr[idx2] = arr[idx2], arr[i] #swap
           hash[biggest], hash[hold] = i ,idx2 #swap
           j += 1
           i += 1
       end
    end
    arr.join(" ")
end

n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

puts permutation(arr, k)
