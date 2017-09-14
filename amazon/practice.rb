

def mult(num)
  start = "1"
  while start.to_i % num != 0
    start += "1"
  end
  start.to_i
end
