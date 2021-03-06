# Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.
# Example 1:
# Input: S = "ab#c", T = "ad#c"
# Output: true
# Explanation: Both S and T become "ac".
# Example 2:
# Input: S = "ab##", T = "c#d#"
# Output: true
# Explanation: Both S and T become "".

def backspace_compare(s, t)
    s_out, t_out = [], []
    s.chars.each { |x| x == '#' ? s_out.pop : s_out.push(x) }
    t.chars.each { |x| x == '#' ? t_out.pop : t_out.push(x) }
    s_out == t_out
end
