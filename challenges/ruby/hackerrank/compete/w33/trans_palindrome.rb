#!/bin/ruby

n,k,m = gets.strip.split(' ').map(&:to_i)
transform = Hash.new {|h, k| h[k] = []}

for a0 in (0..k-1)
    x,y = gets.strip.split(' ').map(&:to_i)
    transform[x] += transform[y]
    transform[y] += transform[x]

    transform[x].push(y)
    transform[y].push(x)

    transform[x].each {|el| transform[el].push(y)}
    transform[y].each {|el| transform[el].push(x)}

end

transform.keys.each do |key|
    transform[key] = transform[key].uniq.sort
    transform[key].delete(key)
end


arr = gets.strip.split(' ').map(&:to_i)


i, j = 0, arr.length - 1
count = 0
while i <= j
  if i == j
      count += 1
      i += 1
      j -= 1
  elsif arr[i] == arr[j] || (transform[arr[i]].include?(arr[j]) || transform[arr[j]].include?(arr[i]))
      count += 2
        i += 1
        j -= 1
  else
        if arr[i] == arr[j - 1] || (transform[arr[i]].include?(arr[j - 1]) || transform[arr[j - 1]].include?(arr[i]))
            j -= 1
        elsif arr[i + 1] == arr[j] || (transform[arr[i + 1]].include?(arr[j]) || transform[arr[j]].include?(arr[i + 1]))
            i += 1
        else
            j -= 1
        end
  end
end

count2 = 0
while i <= j
  if i == j
      count2 += 1
      i += 1
      j -= 1
  elsif arr[i] == arr[j] || (transform[arr[i]].include?(arr[j]) || transform[arr[j]].include?(arr[i]))
      count2 += 2
        i += 1
        j -= 1
  else
        if arr[i] == arr[j - 1] || (transform[arr[i]].include?(arr[j - 1]) || transform[arr[j - 1]].include?(arr[i]))
            j -= 1
        elsif arr[i + 1] == arr[j] || (transform[arr[i + 1]].include?(arr[j]) || transform[arr[j]].include?(arr[i + 1]))
            i += 1
        else
            i += 1
        end
  end
end
puts [count, count2].max
