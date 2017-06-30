# @param {String} s
# @param {String} t
# @return {Boolean}

def is_isomorphic(s, t)
    return false if s.length != t.length
    hash = Hash.new
    hash2 = Hash.new
    i = 0
    while i < s.length
        if hash[s[i]]
            return false if hash[s[i]] != t[i]
        else
            hash[s[i]] = t[i]

        end


        if hash2[t[i]]
            return false if hash2[t[i]] != s[i]
        else
            hash2[t[i]] = s[i]
        end

        i += 1
    end
    true
end

if __FILE__ == $PROGRAM_NAME
  p is_isomorphic("egg", "add")
end


#########
def is_isomorphic(s, t)
    return false unless s.length == t.length
    map = Hash.new
    s.chars.each_with_index do |c, i|
        if map.has_key? c
            return false if t[i] != map[c]
        else
            return false if map.has_value? t[i]
            map[c] = t[i]
        end
    end
    true
end
