# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i

def palindrome(word)
    i = 0
    j = -1
    count = 0
    while i < word.length + j
        count += (word[i].ord - word[j].ord).abs
        i += 1
        j -= 1
    end

    count
end

n.times do
    word = gets.strip
    puts palindrome(word)
end
