# Enter your code here. Read input from STDIN. Print output to STDOUT
string = gets.strip

def pangram(sentence)
    abc = ("a".."z").to_a
    abc.each do |letter|
        return "not pangram" unless sentence.include?(letter.downcase) || sentence.include?(letter.upcase)
    end
    "pangram"
end

puts pangram(string)


#############################

if gets.strip.downcase.scan(/[a-z]/).uniq.count == 26
    puts "pangram"
else
    puts "not pangram"
end 
