# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    result = []
    hash = Hash.new { |h, k| h[k] = []}
    strs.each do |str|
       holder = str.split("").sort.join("")
       hash[holder] << str
    end
    hash.each do |k, v|
        result << v.sort!
    end
    result
end
