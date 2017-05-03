def StairCase(n)
    i = 1;
    while i <= n;
        spaces = " " * (n - i)
        stairs = "#" * (i)
        puts "#{spaces}#{stairs}"
        i += 1;
    end

end
