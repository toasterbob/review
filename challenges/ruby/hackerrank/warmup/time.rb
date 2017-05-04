#!/bin/ruby

time = gets.strip
am_pm = time.slice!(8,2)

time = time.split(":")

if am_pm == "PM"
    time[0] = (time[0]).to_i + 12 unless time[0] == "12"
    time[0] = "00" if time[0] == "24"
elsif am_pm == "AM"
    time[0] = "00" if time[0] == "12"
end
puts time.join(":")
