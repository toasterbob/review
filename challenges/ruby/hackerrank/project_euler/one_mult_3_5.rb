#!/bin/ruby
def three_five(n)
    result = []
    (3...n).each do |i|
        result << i if i % 3 == 0 || i % 5 == 0
    end
    result.reduce(:+)
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts three_five(n)
end

##################################################################
#!/bin/ruby
def three_five(n)
    result = []
    i = 3
    while i < n
        result << i
        i += [3 - (i % 3), 5 - (i % 5)].min
    end
    result.reduce(0, :+)
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts three_five(n)
end
####################################################
#!/bin/ruby
def three_five(n)
    result = 0
    i = 3
    while i < n
        result += i
        i += [3 - (i % 3), 5 - (i % 5)].min
    end
    result
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts three_five(n)
end
#########################################################
def three_five(n)
    n -= 1
    result = 0

    threes = (n / 3)
    result += (threes * (threes * 3 + 3))/2

    fives = (n / 5)
    result += (fives * (fives * 5 + 5))/2

    fifteens = (n/15)
    result -= (fifteens * (fifteens * 15 + 15))/2

    result
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts three_five(n)
end
