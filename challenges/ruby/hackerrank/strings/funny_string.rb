# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.chomp.to_i

arr = []

n.times do
    arr << gets.chomp
end

arr.each do |string|
    result = []

    start = 0
    i = 0
    while i < string.length - 1
        finish = string.length - 1 - i

        if (string[i + 1].ord - string[i].ord) != (string[finish].ord - string[finish - 1].ord)
            puts "Not Funny"
            i = string.length + 2
        else
            i += 1
        end
        puts "Funny" if i == string.length - 1
    end


end 
