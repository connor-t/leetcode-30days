# You are given a string s containing lowercase English letters, and a matrix shift, where shift[i] = [direction, amount]:
# direction can be 0 (for left shift) or 1 (for right shift).
# amount is the amount by which string s is to be shifted.
# A left shift by 1 means remove the first character of s and append it to the end.
# Similarly, a right shift by 1 means remove the last character of s and add it to the beginning.
# Return the final string after all operations.

# Example 1:
# Input: s = "abc", shift = [[0,1],[1,2]]
# Output: "cab"

# @param {String} s
# @param {Integer[][]} shift
# @return {String}
def string_shift(s, shift)
    amount = 0
    shift.each do |x|
        x[0] == 0 ? amount += x[1] : amount -= x[1]
    end
    s.chars.rotate(amount).join
end
