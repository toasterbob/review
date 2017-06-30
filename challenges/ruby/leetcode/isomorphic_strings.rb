def is_isomorphic(s, t)
    return false if s.length != t.length
    hash = Hash.new(0)
    s.split("").each { |ch| hash[ch] += 1 }
    s = s.split("").map { |ch| "#{ch}#{hash2[ch]}" }

    hash2 = Hash.new(0)
    t.split("").each { |ch| hash2[ch] += 1 }
    t = t.split("").map { |ch| "#{ch}#{hash2[ch]}" }

    s == t
end

if __FILE__ == $PROGRAM_NAME
  p is_isomorphic("egg", "add")
end
