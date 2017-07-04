class PolyTreeNode

  attr_reader :parent, :value, :visited

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
    @visited = []
  end

  def parent=(parent)
    return if self.parent == parent

    old_parent = self.parent
    old_parent._children.delete(self) if old_parent

    @parent = parent
    parent._children << self if parent
    @visited = parent.visited + [parent.value]
    # self.parent._children << self unless self.parent.nil? #theirs - but I like mine better
    self
  end

  #their solution - I was using attr_reader for children

  def children
    # We dup to avoid someone inadvertently trying to modify our
    # children directly through the children array. Note that
    # `parent=` works hard to make sure children/parent always match
    # up. We don't trust our users to do this.
    @children.dup
  end

  def add_child(child_node)
    child_node.parent = self #uses the parent= method above to do the work
  end

  def remove_child(child_node)
    raise "error" unless child_node.parent == self #can't remove a child who doesn't exist
    #theirs - but my one line above seems better
    # if child && !self.children.include?(child)
    #   raise "Tried to remove node that isn't a child"
    # end
    child_node.parent = nil
  end

  def dfs(target_value)
    return self if self.value && self.value == target_value

    self.children.each do |child|
      check = child.dfs(target_value)
      return check if check && check.value == target_value
    end
    nil
  end # target 6 - 1, 2, 4, 5, 3, 6

 #    1
 #  2   3
 # 4 5 6 7

  def bfs(target_value)
    queue = [self]

    until queue.empty?
      # check = queue.pop # change from pop so we can use concat
      check = queue.shift
      return check if check.value == target_value
      # check.children.each { |child| queue.unshift(child) }
      queue.concat(check._children)
    end
    nil
  end # target 6 - 1, 2, 3, 4, 5, 6

  protected
  # Protected method to give a node direct access to another node's
  # children.
  def _children
    @children
  end

end

def check_word(word, word_list)
    #find next step words
    def run_check(word, word_list)
      result = []
      # p word
      word_list.each do |check|
        x = 0
        @index += 1
        word.length.times { |i| x += 1 if word[i] != check[i]}
        if x == 1
          result << check
        end
      end
      # p result

      @hash[word] = result
    end


    @hash[word] ? @hash[word] : run_check(word, word_list)
end

def check_word2(word, word_list)
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


def trace_path(node)
  path = [node.value]
  node2 = node.parent
  while node2.parent
    path.unshift(node2.value)
    node2 = node2.parent
  end
  path
end



def find_ladders(begin_word, end_word, word_list)
    @index = 0
    return [] unless word_list.include?(end_word)
    # word_list2 = Hash.new {false}
    # word_list.each { |word| word_list2[word] = true}
    final_result = []
    visited = Hash.new
    @hash = Hash.new

    @root = PolyTreeNode.new(begin_word)
    queue = [@root]
    until queue.empty?
      parent = queue.shift
      #unless already checked or we found the target
      #p parent.visited
      children = []
      children = check_word(parent.value, word_list) unless parent.value == end_word
      children = [] if !final_result.empty? && parent.visited.length > final_result[0].length
      if parent.visited[-1]
        word = parent.visited[-1]
        i = parent.visited.length - 1
        visited[word] = i if visited[word].nil? || visited[word] < i
      end
      children = [] if visited[parent.value] && visited[parent.value] < parent.visited.length
      #p children
      if parent.value == end_word
        path = trace_path(parent)
        path.unshift(begin_word)
        final_result << path if final_result.empty? || path.length <= final_result[0].length
      end

      children.each do |child_word|
        child = PolyTreeNode.new(child_word)
        parent.add_child(child)
        queue << child
      end
    end

    # p beginnings
    # p endings
    p @index
    final_result
end


if __FILE__ == $PROGRAM_NAME
  beginWord = "hit"
  endWord = "cog"
  wordList = ["hot","dot","dog","lot","log","cog"]
  # p find_ladders(beginWord, endWord, wordList)
  # p find_ladders("a", "b", ["a","b","c"])


  #fails with large input
  arr = ["kid","tag","pup","ail","tun","woo","erg","luz","brr","gay","sip","kay",
    "per","val","mes","ohs","now","boa","cet","pal","bar","die","war","hay","eco",
    "pub","lob","rue","fry","lit","rex","jan","cot","bid","ali","pay","col","gum",
    "ger","row","won","dan","rum","fad","tut","sag","yip","sui","ark","has","zip",
    "fez","own","ump","dis","ads","max","jaw","out","btu","ana","gap","cry","led",
    "abe","box","ore","pig","fie","toy","fat","cal","lie","noh","sew","ono","tam",
    "flu","mgm","ply","awe","pry","tit","tie","yet","too","tax","jim","san","pan",
    "map","ski","ova","wed","non","wac","nut","why","bye","lye","oct","old","fin",
    "feb","chi","sap","owl","log","tod","dot","bow","fob","for","joe","ivy","fan",
    "age","fax","hip","jib","mel","hus","sob","ifs","tab","ara","dab","jag","jar",
    "arm","lot","tom","sax","tex","yum","pei","wen","wry","ire","irk","far","mew",
    "wit","doe","gas","rte","ian","pot","ask","wag","hag","amy","nag","ron","soy",
    "gin","don","tug","fay","vic","boo","nam","ave","buy","sop","but","orb","fen",
    "paw","his","sub","bob","yea","oft","inn","rod","yam","pew","web","hod","hun",
    "gyp","wei","wis","rob","gad","pie","mon","dog","bib","rub","ere","dig","era",
    "cat","fox","bee","mod","day","apr","vie","nev","jam","pam","new","aye","ani",
    "and","ibm","yap","can","pyx","tar","kin","fog","hum","pip","cup","dye","lyx",
    "jog","nun","par","wan","fey","bus","oak","bad","ats","set","qom","vat","eat",
    "pus","rev","axe","ion","six","ila","lao","mom","mas","pro","few","opt","poe",
    "art","ash","oar","cap","lop","may","shy","rid","bat","sum","rim","fee","bmw",
    "sky","maj","hue","thy","ava","rap","den","fla","auk","cox","ibo","hey","saw",
    "vim","sec","ltd","you","its","tat","dew","eva","tog","ram","let","see","zit",
    "maw","nix","ate","gig","rep","owe","ind","hog","eve","sam","zoo","any","dow",
    "cod","bed","vet","ham","sis","hex","via","fir","nod","mao","aug","mum","hoe",
    "bah","hal","keg","hew","zed","tow","gog","ass","dem","who","bet","gos","son",
    "ear","spy","kit","boy","due","sen","oaf","mix","hep","fur","ada","bin","nil",
    "mia","ewe","hit","fix","sad","rib","eye","hop","haw","wax","mid","tad","ken",
    "wad","rye","pap","bog","gut","ito","woe","our","ado","sin","mad","ray","hon",
    "roy","dip","hen","iva","lug","asp","hui","yak","bay","poi","yep","bun","try",
    "lad","elm","nat","wyo","gym","dug","toe","dee","wig","sly","rip","geo","cog",
    "pas","zen","odd","nan","lay","pod","fit","hem","joy","bum","rio","yon","dec",
    "leg","put","sue","dim","pet","yaw","nub","bit","bur","sid","sun","oil","red",
    "doc","moe","caw","eel","dix","cub","end","gem","off","yew","hug","pop","tub",
    "sgt","lid","pun","ton","sol","din","yup","jab","pea","bug","gag","mil","jig",
    "hub","low","did","tin","get","gte","sox","lei","mig","fig","lon","use","ban",
    "flo","nov","jut","bag","mir","sty","lap","two","ins","con","ant","net","tux",
    "ode","stu","mug","cad","nap","gun","fop","tot","sow","sal","sic","ted","wot",
    "del","imp","cob","way","ann","tan","mci","job","wet","ism","err","him","all",
    "pad","hah","hie","aim","ike","jed","ego","mac","baa","min","com","ill","was",
    "cab","ago","ina","big","ilk","gal","tap","duh","ola","ran","lab","top","gob",
    "hot","ora","tia","kip","han","met","hut","she","sac","fed","goo","tee","ell",
    "not","act","gil","rut","ala", "ape","rig","cid","god","duo","lin","aid","gel",
    "awl","lag","elf","liz","ref","aha","fib","oho","tho","her","nor","ace","adz",
    "fun","ned","coo","win","tao", "coy","van","man","pit","guy","foe","hid","mai",
    "sup","jay","hob","mow","jot","are","pol","arc","lax","aft","alb","len","air",
    "pug","pox","vow","got","meg","zoe","amp","ale","bud","gee","pin","dun","pat",
    "ten","mob"]
    p arr.length
     p find_ladders("cet", "ism", arr)



    arr2 = ["ted","tex","red","tax","tad","den","rex","pee"]
    p find_ladders("red", "tax", arr2)
    #[["red","ted","tad","tax"],["red","ted","tex","tax"],["red","rex","tex","tax"]]

  end
