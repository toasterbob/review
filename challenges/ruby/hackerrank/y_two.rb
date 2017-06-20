def sort_businesses_by_rating(businesses)

    hash = Hash.new {|h,k| h[k] = []}

    businesses.each do |h|
        hash[h[:rating]].push(h)
    end

    result = []
    5.downto(1) do |i|
        result += hash[i]
    end

    result
end


businesses = []
ARGF.each_line do |line|
  businesses.push({
    id: line.split(' ')[0].to_i,
    rating: line.split(' ')[1].to_i
  })
end

sorted_businesses = sort_businesses_by_rating(businesses)
sorted_businesses.each do |business|
  puts "#{business[:id]} #{business[:rating]}"
end
