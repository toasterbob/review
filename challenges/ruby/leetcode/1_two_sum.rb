# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
### each submission gets a slightly different time
# because of variations the range for the same code can be in the top 97.5%
# all the way down to 56% FOR THE SAME CODE - at a certain level the variations are
# noise 
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
