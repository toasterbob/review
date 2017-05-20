puts '%.6f' % (1.0/2) # 0.500000 #round 6 places
(2.0/3).ro­und(7) # 0.6666667

negative, rest = [0, -1, 2, 3, -9].partition{|n| n < 0 } #[[-1, -9], [0, 2, 3]]
positive, zero = rest.partition{|n| n > 0} #
p negative, positive, zero

"aabbccc".gsub(/(.)\1/, '') #c

puts s.split(/[A-Z]/).count
p gets.count("A-Z") + 1
p gets.scan(/[A-Z][a-z]*/).count+1

["a", "b", "c", "d"].combination(2).to_a

a = ("a".."z").to_a + ("A".."Z").to_a

require 'date'
Date.leap?(2000) #true
Date.leap?(1900) #false

.map(&:to_i)

str = "With ♥!"
print("My String's encoding: ", str.encoding.name)
print("\nMy String's size: ", str.size)
print("\nMy String's bytesize: ", str.bytesize)

#Strings
# each_byte iterates sequentially through the individual bytes that comprise a string;
# each_char iterates the characters and is more efficient than [] operator or character indexing;
# each_codepoint iterates over the ordinal values of characters in the string;
# each_line iterates the lines.
