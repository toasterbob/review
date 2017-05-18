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
def thirteen(ch)
    13.times do
        ch = ch.next
    end
    ch[-1]
end

def rot13(secret_messages)

    abc = ("a".."z").to_a
    secret_messages.map! do |message|

        message.split("").map { |ch|   abc.include?(ch.downcase) ? thirteen(ch) : ch}.join("")

    end
    secret_messages
end
