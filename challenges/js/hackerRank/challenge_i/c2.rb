def getMinimumDifference(a, b)
    result = []
    a.each_with_index do |word, i|
        word2 = b[i]

        if word.length != word2.length
            result << -1
        else
            i = 0
            count = 0
            word = word.split("").sort
            word_uniq = word.uniq
            word2 = word2.split("").sort

            word_uniq.each do |letter|
                if word.count(letter) > word2.count(letter)
                    count += (word.count(letter) - word2.count(letter))
                end
            end



            result << count
        end
    end
    result
end
