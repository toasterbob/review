#!/bin/ruby
def quicksort(arr)
    return arr if arr.length <= 1
    mid = arr.length/2
    compare = arr[mid]
    less, more = [], []
    arr.each_with_index do |el, i|
        next if i == mid
        if el <= compare
            less << el
        else
            more << el
        end
        p [less, more]
        quicksort(less) + [compare] + quicksort(more)
    end


end

n = gets.strip.to_i
unsorted = Array.new(n)
for unsorted_i in (0..n-1)
    unsorted[unsorted_i] = gets.strip.to_i
end

puts quicksort(unsorted)
