# Enter your code here. Read input from STDIN. Print output to STDOUT
def common_sub(str1, str2)
    str1.split("").uniq.each do |char|
        return "YES" if str2.include?(char)
    end
    "NO"
end

n = gets.strip.to_i

n.times do
    str1 = gets.strip
    str2 = gets.strip
    puts common_sub(str1, str2)
end
