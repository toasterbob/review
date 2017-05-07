def beautiful(str)
    n = str.length / 2
    i = 0;
    while i <= n
        num = str[0, i + 1].to_i
        j = i + 1
        while j < str.length
            increments = num.to_s.length
            next_num = str[j, increments].to_i
            p [num, next_num]
            j = str.length + 10 unless (next_num - num) === 1
            j += increments
            return "YES #{num}" if j === str.length
        end
        i += 1
    end
    return "NO"
end

q = gets.strip.to_i
for a0 in (0..q-1)
    s = gets.strip
    puts beautiful(s)
end
