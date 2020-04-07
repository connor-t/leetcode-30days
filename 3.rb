# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

# Example:

# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.

def max_sub_array(nums)
  ans,sum = nums[0],0
    nums.each do |num|
        sum += num
        ans = [sum, ans].max
        sum = 0 if sum < 0
    end
  ans
end
