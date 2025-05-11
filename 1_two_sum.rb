# problem: https://leetcode.com/problems/two-sum/description/
# my solution:
def two_sum(nums, target)
    nums.each_with_index do |value, index|
        next if target <= value
        if nums.include?(target - value) && nums.index(target - value) != index
            return [index, nums.index(target - value)]
        end
    end
end

#Copilot solution:
#def two_sum(nums, target)
#  hash = {}
#  
#  nums.each_with_index do |num, index|
#    complement = target - num
#    if hash.key?(complement)
#      return [hash[complement], index]
#    end
#    hash[num] = index
#  end
#end

# Examples
#puts two_sum([2, 7, 11, 15], 9).inspect  # Output: [0, 1]
#puts two_sum([3, 2, 4], 6).inspect       # Output: [1, 2]
#puts two_sum([3, 3], 6).inspect          # Output: [0, 1]
