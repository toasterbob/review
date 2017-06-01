#!/bin/ruby

def getRecord(s)
    most, least = s.first, s.first
    m_times, l_times = 0, 0
    s.each do |points|
        if points > most
            m_times += 1
            most = points
        elsif points < least
            l_times += 1
            least = points
        end
    end
    [m_times, l_times]
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
result = getRecord(s)
print result.join(" ")
