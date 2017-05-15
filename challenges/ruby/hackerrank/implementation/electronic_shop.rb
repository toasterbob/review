#!/bin/ruby

def getMoneySpent(keyboards, drives, s)
    totals = []
    return -1 if keyboards.min + drives.min > s
    keyboards.uniq.each do |k|
        drives.uniq.each do |d|
            totals << k + d if (k + d) < s
            return s if k + d == s
        end
    end

    totals.max
end

s,n,m = gets.strip.split(' ')
s = s.to_i
n = n.to_i
m = m.to_i
keyboards = gets.strip
keyboards = keyboards.split(' ').map(&:to_i)
drives = gets.strip
drives = drives.split(' ').map(&:to_i)
#  The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
moneySpent = getMoneySpent(keyboards, drives, s)
puts moneySpent;
