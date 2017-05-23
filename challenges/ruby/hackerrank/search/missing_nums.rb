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

# Enter your code here. Read input from STDIN. Print output to STDOUT
#using a hash 
gets
list_a = gets.strip.split(" ").map(&:to_i)
gets
list_b = gets.strip.split(" ").map(&:to_i)

hash_a = Hash.new(0)
list_a.each{|num| hash_a[num] += 1}
hash_b = Hash.new(0)
list_b.each{|num| hash_b[num] += 1}


list_b.sort.uniq.each do |num|

    if (hash_b[num] - hash_a[num]) != 0
        print num
        print " "
    end
end
