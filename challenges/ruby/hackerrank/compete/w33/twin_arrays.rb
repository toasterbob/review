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
puts twinArrays(ar1, ar2)

#refactor

#!/bin/ruby

def twinArrays(arr1, arr2)
    min1 = arr1[0]
    sec1 = nil
    min2 = arr2[0]
    sec2 = nil

    h1 = Hash.new
    h2 = Hash.new
    arr1.each_with_index do |el, i|
        h1[el] = i
        if el < min1
           sec1 = min1 if sec1.nil? || min1 < sec1
           min1 = el
        else
            sec1 = el if (sec1.nil? || el < sec1)  && i != 0
        end
    end

    arr2.each_with_index do |el, i|
        h2[el] = i
        if el < min2
            sec2 = min2 if sec2.nil? || min2 < sec2
            min2 = el
        else
            sec2 = el if (sec2.nil? || el < sec2)  && i != 0
        end
    end

    return min1 + min2 if h1[min1] != h2[min2]

    [min1 + sec2, min2 + sec1].min
end

n = gets.strip.to_i
ar1 = gets.strip.split(' ').map(&:to_i)
ar2 = gets.strip.split(' ').map(&:to_i)
puts twinArrays(ar1, ar2)
