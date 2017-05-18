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
def rot13(secret_messages)
    p secret_messages
    secret_messages.map! do |message|
        abc = ("a".."z").to_a
        message.split("").map { |ch| ((ch.ord + 13) % "z".ord).chr if abc.include?(ch.downcase)}.join("")

    end
    p secret_messages
end
