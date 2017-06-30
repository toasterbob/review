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
            return false is hash.has_value?(t[i])
            hash[s[i]] = t[i]
        end

        i += 1
    end
    true
end

if __FILE__ == $PROGRAM_NAME
  p is_isomorphic("egg", "add")
end
