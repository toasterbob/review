# Enter your code here. Read input from STDIN. Print output to STDOUT
(vertices, edges) = gets.split.map{|s| s.to_i}
tree = Array.new(vertices + 1)
map = Hash.new

edges.times do
  (connected, parent) = gets.split.map{|s| s.to_i}
  tree[connected] = parent
    if(map[parent])
        map[parent] += 1
    else
        map[parent] = 1
    end
end

result = 0
p tree
p map

puts tree.count(1) - 1














####################################################
(vertices, edges) = gets.split.map{|s| s.to_i}
tree = Array.new(vertices + 1)
map = Hash.new

edges.times do
  (connected, parent) = gets.split.map{|s| s.to_i}
  tree[connected] = parent
  if(!map.has_key?(parent))
    map[parent] = 1
  end
  if(!map.has_key?(connected))
    map[connected] = 1
  end
  count = map[parent]
  map[parent] = count + 1
end

result = 0
puts tree
puts map
(tree.size - 1).downto(1) do |node_index|
  if(hmap[node_index] % 2 == 0)
    hasEven = false
    (tree.size - 1).downto(1) do |i|
      if(tree[i] == node_index)
        node = i
        if(hmap[node] % 2 == 0)
          hasEven = true
        end
      end
    end
    if(!hasEven)
      result += 1
      parent = tree[node_index]
      tree[node_index] = 0
      puts parent
      count2 = hmap[parent]
      hmap[parent] = count2 - 1
    end
  end
end

puts result
