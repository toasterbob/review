# Enter your code here. Read input from STDIN. Print output to STDOUT
def no_answer(str)
    arr = str[1..-1].split("")
    valid = false
    i = 1
    while i < str.length
        if !(str[i] <= str[i - 1])
            valid = true
            i = str.length
        end
        i += 1
    end
    valid
end

def greater(str)
    return "no answer" unless no_answer(str)
    i = str.length - 1
    while i >= 0 #go from the back and switch bigger with smaller
        char1 = str[i]
        j = i - 1
        while j >= 0
            char2 = str[j]
            if char2 < char1
               str[i], str[j] = str[j], str[i] #swap
                k = j
                i = -1 #break loop
                j = -1 #break loop
            end
            j -= 1
        end
        i -= 1
    end

    str[0..k] + str[k + 1..-1].split("").sort.join("")


end


n = gets.strip.to_i

n.times do
    str = gets.strip
    puts greater(str)

end
