

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
    elsif counter[el] == count
      if el < high
        high = el
      end
    end
  end
  "#{high}:#{count}"
end

most_frequent([1, 1, 2, 3, 2, 1, 2, 2]) # 2:4
most_frequent([1, 1, 2, 3, 2, 1, 2, 2, 1]) # 1:4



def maximize(arr, n)
  most = arr.sort.reverse
  n.times do
    return arr.join("").to_i if arr == most
    i = 0
    until arr[i] < arr[i + 1]
      i += 1
    end
    arr[i], arr[i+1] = arr[i+1], arr[i]
  end
  arr.join("").to_i
end
maximize([1, 2, 4, 3], 2)
