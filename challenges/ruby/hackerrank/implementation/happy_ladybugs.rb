#!/bin/ruby
def happy(b)
    happy = ""
    b.split("").uniq.each { |el| happy += (el * b.count(el)) if b.count(el) > 1 }

    return "YES" if b.count("_") == 0 && happy == b

    b.split("").uniq.each do |el|
        next if el == "_"
        return "NO" unless b.count(el) > 1 && b.count("_") >= 1
    end

    "YES"
end

q = gets.strip.to_i
for a0 in (0..q-1)
    n = gets.strip.to_i
    b = gets.strip
    puts happy(b)
end
