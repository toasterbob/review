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

#You have two arrays. Find a mutual item with the best ranking. (0th item: rank 1, 1st item: rank 2,
#and so on)


def best(arr1, arr2)
  hash1 = Hash.new
  arr1.each_with_index { |el, i| hash1[el] = i + 1}

  hash2 = Hash.new
  arr2.each_with_index { |el, i| hash2[el] = i + 1}

  i = 0

  while i < arr1.length || i < arr2.length
    if i < arr1.length
      return i + 1 if hash2[arr1[i]]
    end

    if i < arr2.length
      return i + 1 if hash1[arr2[i]]
    end

    i += 1
  end
end
arr1 = [4, 3, 2, 1]
arr2 = [8, 5, 1, 3]
puts best(arr1, arr2)
