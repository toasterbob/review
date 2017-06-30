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

    i = 0
    s_string = s.join("")
    t_string = t.join("")
    while i < s.length
      if s[i] == t[i]
          i += 1
      else
         t_string.gsub!(t[i], s[i])
         i += 1
      end
    end

    s_string == t_string
end

if __FILE__ == $PROGRAM_NAME
  p is_isomorphic("egg", "add")
end
