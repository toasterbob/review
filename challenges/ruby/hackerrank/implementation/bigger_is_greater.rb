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

        j = i - 1
        char1 = str[j]
        k = j + 1
        while k < str.length
            char2 = str[k]
            if char2 < char1
               str[j], str[k] = str[k], str[j] #swap
                i = -1 #break loop
                k = str.length #break loop
            end
            k += 1
        end
        i -= 1
    end

    str[0..j] + str[j + 1..-1].split("").sort.join("") + " "


end


n = gets.strip.to_i

n.times do
    str = gets.strip
    puts greater(str)

end
#yricnue - original
#yriecnu - mine
#yricuen - correct
