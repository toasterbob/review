def iterate_colors(colors)
    result = []
    colors.each do |color|
        result << color
    end
    result
end

#############################
def skip_animals(animals, skip)
    result = []

    animals.each_with_index do |animal, i|
        result << "#{i}:#{animal}" if i >= skip
    end
    result
end
##########################################
def thirteen(ch)  #using next
    13.times do
        ch = ch.next
    end
    ch[-1]
end

def thirteen2(ch) #using ord
    if ch.upcase == ch
        ch = ch.ord + 13
        ch = ch > "Z".ord ? ch - 26 : ch
    else
        ch = ch.ord + 13
        ch = ch > "z".ord ? ch - 26 : ch
    end
    ch.chr
end

def rot13(secret_messages)
    abc = ("a".."z").to_a
    secret_messages.map! do |message|
        message.split("").map { |ch|   abc.include?(ch.downcase) ? thirteen2(ch) : ch}.join("")
    end
end
###########################################

def sum_terms(n)
    (0..n).inject {|product , n| product + (n * n + 1)};
end

#************************************************************
