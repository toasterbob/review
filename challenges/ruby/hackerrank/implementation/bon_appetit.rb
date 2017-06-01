# Enter your code here. Read input from STDIN. Print output to STDOUT

n, item = gets.strip.split(" ").map(&:to_i)
bill = gets.strip.split(" ").map(&:to_i)
charged = gets.strip.to_i

def bill_checker(item, bill, charged)
    if (bill.reduce(:+) - bill[item]) / 2 == charged
        "Bon Appetit"
    else
        charged - (bill.reduce(:+) - bill[item]) / 2
    end
end

puts bill_checker(item, bill, charged)
