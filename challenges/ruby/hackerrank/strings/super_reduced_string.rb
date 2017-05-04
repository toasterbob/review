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
