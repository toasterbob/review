require "trie"

DICTIONARY = Trie.new
File.readlines('words.txt').each { |line| DICTIONARY.add(line.strip) }

puts DICTIONARY.has_key?("shell")
puts DICTIONARY.has_key?("she")
puts DICTIONARY.has_key?("she")
