# Enter your code here. Read input from STDIN. Print output to STDOUT
input = gets.strip

i = 0
finished = false

while !finished do
    finished = true
    result = ""
    i = 0

    while i < input.length do
        if input[i] == input[i + 1]
            i += 1
            finished = false
        else
            result += input[i]
        end
        i += 1
    end
    input = result
end
input = "Empty String" if input == ""

puts input


##########################
s=gets.chomp
100.times{s=s.sub(/(.)\1/,"")}
puts s.empty? ? "Empty String" : s
#####################################


old = ''

str = gets.chomp

while str != old
    old = str
    str = str.gsub(/(.)\1/, '')
end

puts str == '' ? 'Empty String' : str
##########################################
