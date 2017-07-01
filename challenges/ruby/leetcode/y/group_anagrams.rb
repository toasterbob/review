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

def get_key(str)
   str.chars.sort.join('')
end


#optimization
#change split to chars went from 15 to 85th percentile 
def group_anagrams(strs)
    hash = Hash.new { |h, k| h[k] = []}
    strs.each do |str|
       holder = str.chars.sort.join("")
       hash[holder] << str
    end
    hash.values
end
