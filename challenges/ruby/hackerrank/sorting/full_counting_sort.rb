# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i
arr = []
hash = Hash.new {|h,k| h[k] = [] }
n.times do |i|
    el = gets.strip.split(" ")
    num = el[0].to_i
    el[1] = "-" if i < n/2
    hash[num] << el[1]
end
min, max = [hash.keys.min, hash.keys.max]
min.upto(max) do |i|

end
