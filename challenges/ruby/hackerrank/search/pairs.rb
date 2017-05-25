def  pairs( a,k)
    #a is an array containing numbers and k is the difference.
    count = 0
    h = Hash.new(false)

    a.each do |num|  #O(n)
        h[num] = true
    end

    a.each do |num|
        count += 1 if h[num - k] #lookup O(1)
    end

    count
end
