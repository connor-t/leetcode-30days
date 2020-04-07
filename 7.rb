# Given an integer array arr, count element x such that x + 1 is also in arr.
# If there're duplicates in arr, count them seperately.
# Example 1:
# Input: arr = [1,2,3]
# Output: 2
# Explanation: 1 and 2 are counted cause 2 and 3 are in arr.

def count_elements(arr)
    count = 0
    arr.each { |x| count += 1 if arr.include?(x+1) }
    count
end
