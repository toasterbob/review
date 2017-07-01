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
        p check
        words = word_list.join(" ").scan(check)
        result.concat(words)
        i += 1
    end
    result
end

def find_ladders(begin_word, end_word, word_list)
    check = /[a-z]+at/
    words = ["hat", "cot", "cat"]
    words.join(" ").scan(/[a-z]+at/)
    begin_word
end

if __FILE__ == $PROGRAM_NAME
  beginWord = "hit"
  endWord = "cog"
  wordList = ["hot","dot","dog","lot","log","cog"]
  p check_word(beginWord, wordList)
end
