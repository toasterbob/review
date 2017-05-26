# Enter your code here. Read input from STDIN. Print output to STDOUT
def anagram(str)
    return -1 if str.length % 2 == 1
    half = (str.length / 2)
    count = 0
    str1, str2 = str[0...half], str[half...str.length]

    str2.split("").uniq.each do |char|
        count += str2.count(char) - str1.count(char) if str2.count(char) > str1.count(char)
    end
    count
end

n = gets.strip.to_i

n.times do
   puts anagram(gets.strip)

end 
