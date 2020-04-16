# Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal
#to the product of all the elements of nums except nums[i].
# Example:

# Input:  [1,2,3,4]
# Output: [24,12,8,6]

def product_except_self(nums)
    output = []

    right = 1
    for i in 0...nums.length
        right *= nums[i]
        output[i] = right
    end

    left = 1
    (nums.length - 1).downto(1) do |i|
        output[i] = left * output[i - 1]
        left *= nums[i]
    end

    output[0] = left
    output
end
