# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.strip.to_i
hike_str = gets.strip

def trip(hike)
    altitude = 0
    valleys = 0

    hike.split("").each do |step|
        valleys += 1 if altitude == 0 && step == "D"
        altitude += 1 if step == "U"
        altitude -= 1 if step == "D"
    end

    valleys
end

puts trip(hike_str) 
