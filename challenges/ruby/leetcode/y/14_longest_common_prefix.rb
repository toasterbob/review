# @param {String[]} strs
# @return {String}
#this solution actually checks all the strings 
def longest_common_prefix(strs)
    return "" if strs.empty?
    return strs[0] if strs.length == 1

    i = 0
    compare = strs[0]
    result = ""
    while i < strs[0].length
        if strs.all? { |str| str[i] == compare[i]}
            result += compare[i]
        else
           i = strs[0].length
        end
        i += 1
    end
    result
end

#works to compare only two of the strings, but that is just bad tests
#runtime beats 100% of solutions?????  weird!
#52 ms
def longest_common_prefix(strs)
  return "" if strs.empty?
  small = strs.min
  large = strs.max
  cut = small.length.times do |i|
    break i if small[i] != large[i]
  end
  small[0...cut]
end
