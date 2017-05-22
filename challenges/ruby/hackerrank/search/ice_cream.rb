# Enter your code here. Read input from STDIN. Print output to STDOUT
def ice_cream(money, prices)
    0.upto(prices.length) do |i|
        j = i + 1
        while j < prices.length
            return "#{i + 1} #{j + 1}" if prices[i] + prices[j] == money
            j += 1
        end
    end

end

n = gets.strip.to_i

n.times do
    money = gets.strip.to_i
    flavors = gets.strip.to_i
    prices = gets.strip.split(" ").map(&:to_i)

    puts ice_cream(money, prices)

end
