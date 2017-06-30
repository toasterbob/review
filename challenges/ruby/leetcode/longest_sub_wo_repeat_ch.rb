# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return s.length if s.length <= 1
    hash = Hash.new
    pointer = 0
    result = ""
    current = ""

    s.split("").each_with_index do |ch, i|

        if hash[ch]
            result = current if current.length > result.length
            current = s[hash[ch] + 1..i]
            stop = hash[ch] > 0 ? hash[ch] - 1 : 0
            s[pointer..stop].split("").each do |char|
              hash.delete(char)
            end
            pointer = hash[ch] ? hash[ch] + 1 : 1
            hash[ch] = i
        else
            hash[ch] = i
            current += ch
        end

    end
    result = current if current.length > result.length

    result.length
end

if __FILE__ == $PROGRAM_NAME
  p length_of_longest_substring("abba")
  p length_of_longest_substring("abcabcbb")
end
