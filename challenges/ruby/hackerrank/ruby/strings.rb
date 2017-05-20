# Enter your code here.
def transcode(str)
    str.force_encoding(Encoding::UTF_8)
end

str = "Hello"
str[str.size, 0] = " World!" # append by assigning at the end of the string
str
"Hello World!"
str[5, 0] = "," # insert a comma after the 5th position
str[5, 6] = ""  # delete 6 characters starting from index 6.
"Hello!"
str[5,1] = " World" # replace the string starting from index 5 and of length 1 with the given string.

# Your code here
def serial_average(str)
    num = ((str[4, 5].to_f + str[10,5].to_f)/2)
    "#{str[0,3]}-#{num.round(2)}"
end

#Strings
# each_byte iterates sequentially through the individual bytes that comprise a string;
# each_char iterates the characters and is more efficient than [] operator or character indexing;
# each_codepoint iterates over the ordinal values of characters in the string;
# each_line iterates the lines.


# Your code here
def count_multibyte_char(str)
    count = 0
    str.each_char do |char|
        count += 1 if char.each_byte.to_a.length > 1
    end
    count
end
