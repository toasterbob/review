#!/bin/ruby

n = gets.strip.to_i
height = gets.strip
height = height.split(' ').map(&:to_i)

candles = 0
max_candle = height.max
height.each do |candle|
    candles += 1 if candle == max_candle
end
puts candles 
