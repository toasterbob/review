#!/bin/ruby
def decent_num(n)
    return -1 if n < 3 || n == 4 || n == 7

    threes = n / 3
    x = n % 3

    case x
    when 0
        return "5" * n
    when 1
        threes -= 3
    when 2
        threes -= 1
    end

    fives = (n - (threes * 3))/5

    ("5" * (threes * 3)) + ("3" * (fives * 5))
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts decent_num(n)
end
##########################
#refactor
#!/bin/ruby
def decent_num(n)
    return -1 if n < 3 || n == 4 || n == 7

    threes = n / 3
    x = n % 3

    if x == 0
        return "5" * n
    elsif x == 1
        threes -= 3
    elsif x == 2
        threes -= 1
    end

    fives = (n - (threes * 3))/5

    ("5" * (threes * 3)) + ("3" * (fives * 5))
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts decent_num(n)
end


###############################
#theirs 
def comb n
    if n > 0 && n % 3 == 0
        return '5' * n
    end

	if n < 15 && n % 5 == 0
            return '3' * n
    end

    t = (3 - (n % 3))
    f = (n - (t*5)) / 3

    if f > 0 && f == f.floor
        return ('5' * f * 3) + ('3' * t * 5)
    else
        return '-1'
    end
end

ncases = gets.to_i

ncases.times {
    n = gets.to_i
    puts comb(n)
}
