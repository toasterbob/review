# Enter your code here. Read input from STDIN. Print output to STDOUT

def alt_chars(str, count)
    return 1 if str.split("").uniq.count == 1
    i = 0
    changed = false
    while i < str.length - 1
       if str[i] == str[i + 1]
           str.slice!(i + 1)
           count += 1
           changed = true
           i = str.length #break loop

       else
           i += 1
       end

    end
    changed ? alt_chars(str, count) : count
end

n = gets.strip.to_i

n.times do
    string = gets.strip
    puts alt_chars(string, 0)
end 
