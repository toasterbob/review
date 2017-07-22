def odd()
  total = 0
  i = 1
  j = 0
  while i < 200
    total += i
    i += 2
    j += 1
  end
  p total
end

odd()
