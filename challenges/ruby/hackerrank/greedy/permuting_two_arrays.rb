# Enter your code here. Read input from STDIN. Print output to STDOUT
def two_arrays(arr1, arr2, k)
   arr1.sort!
   arr2 = arr2.sort.reverse

   0.upto(arr1.length - 1) do |i|
      return "NO" unless arr1[i] + arr2[i] >= k
   end
   
   "YES"
end

n = gets.strip.to_i

n.times do
   n, k = gets.strip.split(" ").map(&:to_i)
   arr1 = gets.strip.split(" ").map(&:to_i)
   arr2 = gets.strip.split(" ").map(&:to_i)
   puts two_arrays(arr1, arr2, k)
end
