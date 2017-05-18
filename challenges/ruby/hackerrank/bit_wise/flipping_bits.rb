# Enter your code here. Read input from STDIN. Print output to STDOUT
def flip(num)
    result = ""
    num = num.to_s(2)
    zeroes = "0" * (32 - num.length)
    num = zeroes + num
    num.split("").each do |bit|
        result += "0" if bit == "1"
        result += "1" if bit == "0"
    end
    result.to_i(2)
end


n = gets.strip.to_i

n.times do
    num = gets.strip.to_i
    puts flip(num)
end


# Enter your code here. Read input from STDIN. Print output to STDOUT
def flip(num)
      num ^ (2**32-1)
end


n = gets.strip.to_i

n.times do
    num = gets.strip.to_i
    puts flip(num)
end



# solution 2
gets

while e = gets
    puts 0xffffffff ^ e.to_i
end

#solution 3

def flippingbits(t)
  t ^ (2**32-1)
end

t = gets.strip.to_i
(1..t).each do
    testline = gets.to_i
    puts flippingbits(testline)
end
