# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def check_word(word, word_list)
    #find next step words
    result = []
    i = 0
    while i < word.length
        check = word.chars
        check[i] = '[a-z]'
        check = "#{check.join('+')}"
        check = Regexp.new check
        words = word_list.join(" ").scan(check)

        result.concat(words)
        i += 1
    end
    result.delete(word)
    result
end

def find_ladders(begin_word, end_word, word_list)
    hash = Hash.new
    beginnings = []
    endings = []
    check_word(begin_word, word_list).each do |word|
      beginnings << [word]
    end
    return [[begin_word, end_word]] if beginnings.include?([end_word])

    check_word(end_word, word_list).each do |word|
      endings << [word]
    end
    p beginnings
    p endings
    nil
end

if __FILE__ == $PROGRAM_NAME
  beginWord = "hit"
  endWord = "cog"
  wordList = ["hot","dot","dog","lot","log","cog"]
  p find_ladders(beginWord, endWord, wordList)
end
