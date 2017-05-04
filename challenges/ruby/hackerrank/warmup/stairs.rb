def StairCase(n)
    i = 1;
    while i <= n;
        spaces = " " * (n - i)
        stairs = "#" * (i)
        puts "#{spaces}#{stairs}"
        i += 1;
    end

end

##########
#!/bin/ruby

n = gets.strip.to_i
i = 1

while i <= n
    spaces = " " * (n - i)
    steps = "#" * i
    puts "#{spaces}#{steps}"
    i += 1
end
