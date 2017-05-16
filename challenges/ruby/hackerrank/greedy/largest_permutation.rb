# Enter your code here. Read input from STDIN. Print output to STDOUT
def permutation(arr, k)
    sorted = arr.sort.reverse
    return arr if arr == sorted
    i = 0
    j = 0
    while j < k do
       biggest = sorted.shift
       idx2 = arr[i..-1].index(biggest) + i
       if idx2 == 0
           i += 0
       else
           arr[i], arr[idx2] = arr[idx2], arr[i] #swap
           j += 1
           i += 1
       end
    end
    arr.join(" ")
end

n, k = gets.strip.split(" ").map(&:to_i)
arr = gets.strip.split(" ").map(&:to_i)

puts permutation(arr, k)
