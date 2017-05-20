power_array = -> (power, array_size) do
    1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size)
end
#To avoid timeouts and memory allocation exceptions, we use lazy

puts power_array.(2 , 4)    #[1, 4, 9, 16]
puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
puts power_array.(3, 5)     #[1, 8, 27, 64, 125]
