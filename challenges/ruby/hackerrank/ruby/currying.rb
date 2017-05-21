multiply_numbers = -> (x,y) do
    x*y
end

doubler = multiply_numbers.curry.(2)
tripler = multiply_numbers.curry.(3)

puts doubler.(4)    #8
puts tripler.(4)    #12
########################################################
multiply_numbers2 = -> (x,y,z) do
    x*y*z
end

three = multiply_numbers2.curry.(2)
four = three.(3)
puts four.(5) #30
puts three.(10, 5) #100
##########################################################

power_function = -> (x, z) {
    (x) ** z
}

base = gets.to_i
raise_to_power = power_function.curry.(base)

power = gets.to_i
puts raise_to_power.(power)

##########################################################
