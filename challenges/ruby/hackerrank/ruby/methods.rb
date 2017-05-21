def prime?(n)
    return false if n < 2
    return true if n == 2
    2.upto(n - 1) do |i|
        return false if n % i == 0
    end
    true
end

# Your code here
def take(arr, n = 1)
   arr[n..-1]
end

def take(arr, n = 1)
    arr.drop(n)
end

##########################
def foo(str: "foo", num: 424242, **options)
  [str, num, options]
end

foo #=> ['foo', 424242, {}]
foo(check: true) # => ['foo', 424242, {check: true}]
#################################################
def convert_temp(temp, input_scale: "celsius", output_scale: "celsius")

    if input_scale == "celsius"
        temp = temp * 9/5.0 + 32.0 if output_scale == "fahrenheit"
        temp = temp + 273.15 if output_scale == "kelvin"
    elsif input_scale == "kelvin"
        temp = temp * 9/5.0 - 459.67 if output_scale == "fahrenheit"
        temp = temp - 273.15 if output_scale == "celsius"
    elsif input_scale == "fahrenheit"
        temp = (temp - 32) * 5/9.0 if output_scale == "celsius"
        temp = (temp + 459.67) * 5/9.0 if output_scale == "kelvin"
    end

    temp
end
#############################################################
# Your code here
def full_name(*splat_names)
    splat_names.join(" ")
end
###############################################################
def call_block
    puts "Start of method."
    yield
    puts "End of method."
end
call_block do
    puts "I am inside call_block method."
end


# Start of method.
# I am inside call_block method.
# End of method.

def calculate(a,b)
    yield(a, b)
end

puts calculate(15, 10) {|a, b| a - b}   # 5
##############################################
def factorial
    yield
end

n = gets.to_i
factorial do
    result = n
    i = n - 1
    while i > 1
        result *= i
        i -= 1
    end
    puts result
end
#############################################
def factorial
    yield
end

n = gets.to_i
factorial do
    puts 1.upto(n).inject(&:*)
end
#***********************************************

def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = proc {|num| num * num}
proc_sum_array = proc { |arr| arr.reduce(&:+)}
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)

#################################################################
