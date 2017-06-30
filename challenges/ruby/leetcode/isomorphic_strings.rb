def is_isomorphic(s, t)
    return false if s.length != t.length
    hash = Hash.new(0)
    s.split.each { |ch| hash[ch] += 1 }
    s.split.map { |ch| hash[ch] }.join("")

    hash2 = Hash.new(0)
    t.split.each { |ch| hash2[ch] += 1 }
    t.split.map { |ch| hash2[ch] }.join("")

    s == t
end

if __FILE__ == $PROGRAM_NAME
  
end
