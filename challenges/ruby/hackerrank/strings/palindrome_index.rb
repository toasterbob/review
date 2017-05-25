# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i

def palindrome(str)
    return -1 if str == str.reverse
    i = 0
    j = str.length - 1
    while str[i] == str[j]
        i += 1
        j -= 1
    end

    return i if str[i + 1] == str[j] && str[i + 2] == str[j - 1] # check two spots just to make sure input doesn't false match
    return j if str[i] == str[j - 1] && str[i + 1] == str[j - 2]
end

n.times do
    puts palindrome(gets.strip)

end 
