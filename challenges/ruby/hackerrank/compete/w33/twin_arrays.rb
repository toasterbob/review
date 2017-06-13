#!/bin/ruby

def twinArrays(arr1, arr2)
    s_arr1 = arr1.sort
    s_arr2 = arr2.sort
    m1 = s_arr1[0]
    m2 = s_arr2[0]
    idx1 = arr1.index(m1)
    idx2 = arr2.index(m2)
    return m1 + m2 if idx1 != idx2
    mm1 = s_arr1[1]
    mm2 = s_arr2[1]
    [m1 + mm2, m2 + mm1].min
end

n = gets.strip.to_i
ar1 = gets.strip.split(' ').map(&:to_i)
ar2 = gets.strip.split(' ').map(&:to_i)
result = twinArrays(ar1, ar2)
puts result;
