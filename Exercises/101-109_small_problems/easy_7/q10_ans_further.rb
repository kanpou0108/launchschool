# Further Exploration
# 
# Returns "" if string is empty; returns the first of the middle two words if string has an even number of words.

def middle_word(str)
  return "" if str.empty?
  words_array = str.split
  middle_index = (words_array.length - 1) / 2
  words_array[middle_index]
end

p middle_word('last word')
p middle_word('Launch School is great!')
