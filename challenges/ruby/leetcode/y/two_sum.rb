def two_sum(arr, sum)
  hash = Hash.new { |h, v| h[v] = [] }
  arr.each_with_index { |el, i| hash[el].push[i] }


  i = 0
  while i < arr.length
    #return [arr[i], sum - arr[i]] if hash[sum - arr[i]] #return numbers
    return [i, hash[sum - arr[i]].first] if hash[sum - arr[i]] && hash[sum - arr[i].first] != i#return indexes
    i += 1
  end
  -1
end
#returns first pair that matches the condition or -1 if no condition matches
#need to check that index doesn't compare to itself
