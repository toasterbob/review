def two_sum(arr, sum)
  hash = Hash.new
  arr.each_with_index { |el, i| hash[el] = i }

  i = 0
  while i < arr.length
    #return [arr[i], sum - arr[i]] if hash[sum - arr[i]] #return numbers
    return [i, hash[sum - arr[i]]] if hash[sum - arr[i]] && hash[sum - arr[i]] != i#return indexes
    i += 1
  end
  -1
end
#returns first pair that matches the condition or -1 if no condition matches
