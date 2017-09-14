

def mult(num)
  start = "1"
  while start.to_i % num != 0
    start += "1"
  end
  start.to_i
end

def most_frequent(arr)
  return nil if arr.empty?
  counter = Hash.new(0)
  high = arr[0]
  count = 0
  arr.each do |el|
    counter[el] += 1
    if counter[el] > count
      high = el
      count = counter[el]
    end
  end
  high 
end
