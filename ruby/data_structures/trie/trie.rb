require "trie"

DICTIONARY = Trie.new
File.readlines('words.txt').each { |line| DICTIONARY.add(line.strip) }

puts DICTIONARY.has_key?("abds").nil? #not in dictionary, returns nil

puts DICTIONARY.has_key?("she").nil? #false
puts DICTIONARY.has_key?("she") #true
puts DICTIONARY.has_key?("he") #true
puts !DICTIONARY.has_key?("hem").nil? #false


# Performance Characteristics
#
# Here are some quick benchmarks on my 2.4ghz Intel Core 2 Duo MacBook Pro:
# For keys that are 5 characters long:
# 31,344 adds/second
# 1,827,408 searches/second
# 38,453 prefixes searches/second
#
# For keys that are 10 characters long:
# 30,653 adds/second
# 1,802,649 searches/second
# 13,553 prefix searches/second
#
# For keys that are 20 characters long:
# 30,488 adds/second
# 1,851,461 searches/second
# 5,855 prefix searches/second
#
# For keys that are 40 characters long:
# 30,710 adds/second
# 1,838,380 searches/second
# 2,762 prefix searches/second
