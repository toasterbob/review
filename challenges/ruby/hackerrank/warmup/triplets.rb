#!/bin/ruby

def solve(a0, a1, a2, b0, b1, b2)
    arr = [0, 0]
    def winner(a, b, arr)
        arr[0] += 1 if a > b
        arr[1] += 1 if b > a
        arr
    end
    arr = winner(a0, b0, arr)
    arr = winner(a1, b1, arr)
    winner(a2, b2, arr)
end

a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i
result = solve(a0, a1, a2, b0, b1, b2)
print result.join(" ")


###
a = gets.strip.split(' ').map(&:to_i)
b = gets.strip.split(' ').map(&:to_i)
c = a.zip(b)

alice = 0
bob = 0
c.each do |a, b|
  if a > b
    alice += 1
  elsif a < b
    bob += 1
  end
end

puts "#{alice} #{bob}"


#########################

#!/bin/ruby

def solve2(a, b)
    alice, bob = 0, 0
    c = a.zip(b)

    c.each do |alice_score, bob_score|
        alice += 1 if alice_score > bob_score
        bob += 1 if bob_score > alice_score
    end
    [alice, bob]
end

a = gets.strip.split(' ').map{|aa| aa.to_i}

b = gets.strip.split(' ').map{|bb| bb.to_i}

result = solve2(a, b)
print result.join(" ")
