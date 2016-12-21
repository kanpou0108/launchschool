def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  result = []
  last_index = string.size - 1
  0.upto(last_index) do |index|
    chars = string[index, string.size]
    result << substrings_at_start(chars)
  end
  result.flatten
end

p substrings('abcde')

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# All Substrings
# 
# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.
# 
# You may (and should) use the substrings_at_start method you wrote in the previous exercise:
# 
# Examples:

