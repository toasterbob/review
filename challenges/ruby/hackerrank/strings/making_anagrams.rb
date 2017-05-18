# Enter your code here. Read input from STDIN. Print output to STDOUT
one = gets.strip
two = gets.strip

def anagram(word1, word2)
    delete = 0

    (word1 + word2).split("").uniq.each do |char|
        delete += (word1.count(char) - word2.count(char)).abs
    end

    delete
end

puts anagram(one, two) 
