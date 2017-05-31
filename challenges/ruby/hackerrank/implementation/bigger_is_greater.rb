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
    arr = str.split("").permutation.uniq.map {|arr| arr.join("") }.sort
    pos = arr.index(str) + 1
    arr[pos]
end


n = gets.strip.to_i

n.times do
    str = gets.strip
    puts greater(str)

end
