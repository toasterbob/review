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
def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    hash.any? {|key, value| key.is_a? Integer}
end

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    hash.all? { |key, value| (value.is_a? Integer) && value < 10 }
end

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    hash.none? {|key, value| value.nil?}
end

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    hash.find { |key, value| (key.is_a?(Integer) && value.is_a?(Integer) && value < 20) || (key.is_a?(String) && value.is_a?(String) && value[0] == "a") }
end
###########################################################################
def group_by_marks(marks, pass_marks)
    hash = Hash.new
    hash["Passed"], hash["Failed"] = marks.group_by { |key, value| value >= pass_marks}

end
