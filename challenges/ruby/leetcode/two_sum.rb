# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index { |num, i| hash[num] = i }
    nums.each_with_index do |num, i|
       goal = target - num
       return [i, hash[goal]] if hash[goal] && hash[goal] != i
    end
end

####
### I thought this might optimize it a bit, but not sure.  
def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index do |num, i|
       goal = target - num
       return [hash[goal], i] if hash[goal]
       hash[num] = i
    end
end
