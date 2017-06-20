a = "mark".split("")

word = "adsfadsfkjadfsklj"
hash = Hash.new(0)
word.split("").each {|ch| hash[ch] += 1}
p hash
result = ""
hash.each {|k, v| result += "#{v}#{k}"}

result # "3a3d3s3f2k2j1l"

result = []
hash.values.max #3
hash.each {|k, v| result << k if v == 3}
result.sort.join(" ") #"a d f s"

word.split("").sort #["a", "a", "a", "d", "d", "d", "f", "f", "f", "j", "j", "k", "k", "l", "s", "s", "s"]
word.split("").sort.join("") #"aaadddfffjjkklsss"
