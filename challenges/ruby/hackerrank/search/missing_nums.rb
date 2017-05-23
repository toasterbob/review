# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
list_a = gets.strip.split(" ").map(&:to_i)
gets
list_b = gets.strip.split(" ").map(&:to_i)

result = []

list_b.sort.uniq.each do |num|

    if (list_b.count(num) - list_a.count(num)) != 0
        print num
        print " "
    end
end
