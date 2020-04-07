# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# Example:
# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]

def move_zeroes(nums)
    count = nums.count(0)
    nums.delete(0)
    nums.concat(Array.new(count, 0))
end
