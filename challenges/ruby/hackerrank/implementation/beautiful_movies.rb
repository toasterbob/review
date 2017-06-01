# Enter your code here. Read input from STDIN. Print output to STDOUT
i, j, k = gets.strip.split(" ").map(&:to_i)

def beautiful(i, j, k)
    count = 0;

    i.upto(j) do |day|
        count += 1 if (day - day.to_s.reverse.to_i).abs % k == 0
    end
    count
end

puts beautiful(i, j, k)
