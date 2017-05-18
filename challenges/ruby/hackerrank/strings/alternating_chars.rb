# Enter your code here. Read input from STDIN. Print output to STDOUT

def alt_chars(str)
    return (str.length - 1) if str.split("").uniq.count == 1
    i = 0
    count = 0
    while i < str.length
        j = i + 1
        while str[i] == str[j]
            j += 1
            count += 1
        end
        i = j
    end
    count
end

n = gets.strip.to_i

n.times do
    string = gets.strip
    puts alt_chars(string)
end 
