def  partition( ar)
    left, equal, right = [], [ar[0]], []
    1.upto(ar.length - 1)do |i|
       if ar[i] > ar[0]
           right << ar[i]
       else
           left << ar[i]
       end
    end
    (left + equal + right).join(" ")
end
cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map{|x|x.to_i};
puts partition(ar);
