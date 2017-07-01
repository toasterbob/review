# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}

def check_word(word, word_list)
    #find next step words
    def run_check(word, word_list)
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
      @hash[word] = result
    end

    @hash[word] ? @hash[word] : run_check(word, word_list)
end

def process(beginnings, word_list)
  new_beginnings = []
  beginnings.each do |arr|
    word = arr[-1]
    check_word(word, word_list).each do |result|
      new_beginnings << (arr.dup << result) unless result.empty? || arr.include?(result)
    end
  end
  new_beginnings
end

def find_ladders(begin_word, end_word, word_list)
    return [] unless word_list.include?(end_word)
    final_result = []
    @hash = Hash.new
    beginnings = []
    check_word(begin_word, word_list).each do |word|
      beginnings << [begin_word, word]
    end
    return [[begin_word, end_word]] if beginnings.include?([begin_word, end_word])

    endings = check_word(end_word, word_list)
    return [] if endings.empty?
    return [] if beginnings.empty?
    beginnings.each do |arr|
      check = arr[-1]
      final_result << (arr.dup << end_word) if endings.include?(check)
    end

    #one cycle
    while final_result.empty?
      beginnings = process(beginnings, word_list)
      return [] if beginnings.empty?
      beginnings.each do |arr|
        check = arr[-1]
        final_result << (arr.dup << end_word) if endings.include?(check)
      end
    end

    # p beginnings
    # p endings
    final_result
end

if __FILE__ == $PROGRAM_NAME
  beginWord = "hit"
  endWord = "cog"
  wordList = ["hot","dot","dog","lot","log","cog"]
  p find_ladders(beginWord, endWord, wordList)
  p find_ladders("a", "b", ["a","b","c"])
end
