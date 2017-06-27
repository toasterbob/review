require "trie"

DICTIONARY = Trie.new
File.readlines('words.txt').each { |line| DICTIONARY.add(line.strip) }

puts DICTIONARY.has_key?("abds").nil? #not in dictionary, returns nil

puts DICTIONARY.has_key?("she").nil? #false
puts DICTIONARY.has_key?("she") #true
puts DICTIONARY.has_key?("he") #true
