# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i

def palindrome(str)
    return -1 if str == str.reverse
    str.length.times do |i|
        test = str.clone
        test.slice!(i, 1)
        return i if  test == test.reverse
    end
end

n.times do
    puts palindrome(gets.strip)

end 
