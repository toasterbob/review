def  pairs( a,k)
    #a is an array containing numbers and k is the difference.
    count = 0
    h = Hash.new(false)
    a.each do |num|
        h[num] = true
    end
    a.each do |num|
        count += 1 if h[num - k]
    end
    count
end
