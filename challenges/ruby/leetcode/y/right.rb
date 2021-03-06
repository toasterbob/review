def count_all_right_triangles(arr)
    count = 0
    value_hash = Hash.new(0)
    arr.each { |el| value_hash[el] += 1 }

    arr.sort.each do |el|
      # look for c
      c = el * el
      found = {}
      el.downto(1) do |i| # this will find a and b twice
        next if found[i] # so we will store a in found if we find it to prevent it 
          if hash[i]
            b = i * i
            missing = Math.sqrt(c - b)
            a = missing.to_i if missing > 0 && (missing.floor == missing)
            # only checks whole numbers
            if a && hash[a]
              if a != i
                count += (value_hash[a] * value_hash[i])
                found[a] = true
              elsif (a == i && hash[a] > 1)
                count += (value_hash[a] * value_hash[i])/2
                found[a] = true
              end
            end
          end
        end
    end

    count
end

p count_all_right_triangles([3, 4, 5]) # 1
p count_all_right_triangles([3, 3, 4, 5]) # 2
p count_all_right_triangles([3, 4, 5, 5]) # 2
p count_all_right_triangles([2, 3, 9, 10, 12, 15]) # 1
p count_all_right_triangles([14, 16, 20, 21, 29, 30, 32, 34, 35, 36,
         41, 43, 48, 54, 60, 63, 64, 66, 68, 72,
         80, 84, 85, 90, 96, 105, 108, 113, 115, 117,
         119, 124, 126, 128, 135, 150, 152, 156, 160, 168,
         171, 180, 191, 195, 199, 207, 210, 225, 230, 231]) #11
