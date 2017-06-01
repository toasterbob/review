#!/bin/ruby

n,k,q = gets.strip.split(' ')
n = n.to_i
k = k.to_i
q = q.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

rotate = k % n
arr = a.slice(n - rotate, rotate) + a.slice(0, n - rotate)

for a0 in (0..q-1)
    m = gets.strip.to_i
    puts arr[m]
end

#################
#negative rotation
def rotate(n, arr)
  if n == 0
    arr
  elsif n < 0
    n = (-n % arr.length)
    return arr if n == 0
    arr.drop(n) + arr.take(n)
  elsif n > 0
    n = n % arr.length
    return arr if n == 0
    arr.drop(arr.length - n) + arr.take(arr.length - n)
  end
end
