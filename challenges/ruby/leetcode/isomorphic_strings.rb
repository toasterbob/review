# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    return false if s.length != t.length
    hash = Hash.new(0)
    s.split("").each { |ch| hash[ch] += 1 }
    s = s.split("").map { |ch| "#{ch}#{hash[ch]}" }

    hash2 = Hash.new(0)
    t.split("").each { |ch| hash2[ch] += 1 }
    t = t.split("").map { |ch| "#{ch}#{hash2[ch]}" }

    while i < s.length
      t_string = t.join("")
      if s[i] == t[i]
          i += 1
      else
         t_string.gsub!(t[i], s[i])
      end
    end

    s.join("") == t
end

if __FILE__ == $PROGRAM_NAME
  p is_isomorphic("egg", "add")
end
