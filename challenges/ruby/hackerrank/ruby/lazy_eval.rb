power_array = -> (power, array_size) do
    1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size)
end
#To avoid timeouts and memory allocation exceptions, we use lazy

puts power_array.(2 , 4)    #[1, 4, 9, 16]
puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
puts power_array.(3, 5)     #[1, 8, 27, 64, 125]

# Enter your code here. Read input from STDIN. Print output to STDOUT

$pal_p = [2, 3, 5, 7, 11]
$count = 12

n = gets.strip.to_i
require 'prime'

def pal_primes(n)
    while Primes
    i = $count
    while $pal_p.length < n
      $pal_p << i if Prime.prime?(i) && i.to_s == i.to_s.reverse
      i += 1
    end
    $pal_p

end

p pal_primes(n)
