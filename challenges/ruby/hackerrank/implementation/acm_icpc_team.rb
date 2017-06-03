#!/bin/ruby

n,m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
topic = Array.new(n)
for topic_i in (0..n-1)
    topic[topic_i] = gets.strip
end
top = 0
best = Hash.new(0)

0.upto(topic.length - 2) do |i|
    compare = i + 1
    compare.upto(topic.length - 1) do |j|
        count = 0
        topic[i].split("").each_with_index { |el, i| count += 1 if el == "1" || topic[j][i] == "1" }
        top = count if count > top
        best[count] += 1
    end
end
puts top
puts best[top]
