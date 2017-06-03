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
    a = topic[i].to_i(2)
    compare.upto(topic.length - 1) do |j|
        b = topic[j].to_i(2)
        count = (a | b).to_s(2).count("1")
        top = count if count > top
        best[count] +=1
    end
end
puts top
puts best[top]
