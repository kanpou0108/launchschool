# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels removed.
# 
# ** input: ** green, yellow, black, white
# 
# ** output: ** grn, yllw, blck, wht

def remove_vowels(strings)
  vowels = 'aeiou'
  result = strings.map { |word| word.delete(vowels) }
end

arr = %w(green, yellow, black, white)

p remove_vowels(arr)