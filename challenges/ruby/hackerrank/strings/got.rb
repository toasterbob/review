def palindrome(str)
    odd = 0
    str.split("").uniq.each do |char|
        odd += 1 if str.count(char) % 2 == 1
        return "NO" if odd > 1
    end
    "YES"
end

string = gets.chomp


puts palindrome(string)
