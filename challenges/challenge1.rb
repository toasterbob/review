def maxDifference(a)
    min = a[0]
    answer = 0
    a.each do |num|
        answer = (num - min) if (num - min)  >  answer
        min = num if num < min
    end
    answer == 0 ? -1 : answer
end
