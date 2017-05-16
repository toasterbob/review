def toys(prices, money)
   count = 0
   while money > 0
      count += 1
      money -= prices.shift
   end
   money == 0 ? count : count - 1
end

n, money = gets.split(/\s/).map(&:to_i)
prices = gets.split(/\s/).map(&:to_i).sort

puts toys(prices, money)

##########################################
def toys(prices, money)
   i = 0
   while money > 0
      money -= prices[i]
      i += 1
   end
   money == 0 ? i : i - 1
end

n, money = gets.split(/\s/).map(&:to_i)
prices = gets.split(/\s/).map(&:to_i).sort

puts toys(prices, money)
