
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
    i = str.length - 2

    while i >= 0 #go from the back and switch bigger with smaller
        char1 = str[i]
        remaining = str[i + 1..-1]

        remaining.split("").sort.uniq.each do |char2|
           if  char2 > char1
               j = -(remaining.reverse.index(char2) + 1) #find the instance of that char closest to the end of arr
               str[j], str[i] = str[i], str[j] #swap
               return str[0..i] + str[i + 1..-1].split("").sort.join("")
           end
        end
        i -= 1
    end
end


n = gets.strip.to_i

n.times do
    str = gets.strip
    puts greater(str)
end
