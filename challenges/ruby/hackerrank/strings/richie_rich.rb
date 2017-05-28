#!/bin/ruby
def checker(num)
    differences = 0
    i = 0
    j = num.length - 1
    while i < j
        differences += 1 if num[i] != num[j]
        i += 1
        j -= 1
    end
    differences
end

def biggest_palindrome(k, num)
    dif = checker(num)
    return -1 if dif > k
    return "9" * num.length if k >= num.length

    if dif == 0 && k == 1 && num.length % 2 == 1
        num[num.length/2] = "9"
        return num
    end

    i = 0
    j = num.length - 1

    while i < j

        while k - dif >= 2
            dif -= 1 if num[i] != num[j]
            if num[i] != "9"
                num[i] = "9"
                k -= 1
            end
            if num[j] != "9"
                num[j] = "9"
                k -= 1
            end
            i += 1
            j -= 1
        end

        while k - dif == 1
            dif -= 1 if num[i] != num[j]
            if num[i] != num[j]
                if num[i] != "9"
                    num[i] = "9"
                    k -= 1
                end
                if num[j] != "9"
                    num[j] = "9"
                    k -= 1
                end
                i += 1
                j -= 1
            end
        end

        if k == dif

            if num[i] != num[j]
                max_n = [num[i].to_i, num[j].to_i].max
                num[i], num[j] = max_n.to_s, max_n.to_s
            end
            i += 1
            j -= 1

            k -= 1
            dif -= 1
        end

    end
    num[num.length/2] = 9 if k > 0 && num.length % 2 == 1
    num
end


n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
number = gets.strip
puts biggest_palindrome(k, number)
