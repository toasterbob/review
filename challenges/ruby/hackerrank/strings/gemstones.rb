# Enter your code here. Read input from STDIN. Print output to STDOUT
def analyze(arr)
    set = arr[0].split("").uniq
    arr.each do |rock|
        new_set = []
        set.each do |element|
            new_set << element if rock.include?(element)
        end
        set = new_set.uniq
    end
    set.count
end


n = gets.strip.to_i
rocks = []

n.times do
    rocks << gets.strip
end

puts analyze(rocks)
