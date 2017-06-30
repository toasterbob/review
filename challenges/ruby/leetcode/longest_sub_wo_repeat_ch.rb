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




######
def length_of_longest_substring2(s)
    max = 0
    map = {}
    left = -1
    s.chars.each_with_index do |c, i|
        if ci = map[c] and ci > left
            left = ci
        end
        map[c] = i
        #puts "#{i},left=#{left},#{map}"
        new_length = i - left
        max = new_length if max < new_length
    end
    max
end

def length_of_longest_substring3(s)
  hash = Hash.new
  i = 0
  j = 0
  max = 0
  while j < s.length
    ch = s[j]
    if hash[ch]
      i = hash[ch] if hash[ch] > i
    end
    max = j - i + 1 if j - i + 1 > max
    hash[ch] = j + 1

    j += 1
  end
  return max
end

if __FILE__ == $PROGRAM_NAME
  # p length_of_longest_substring("abba")
  p length_of_longest_substring3("abcabcbb")
end
