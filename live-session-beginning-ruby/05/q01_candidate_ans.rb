# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels removed.
# 
# ** input: ** green, yellow, black, white
# 
# ** output: ** grn, yllw, blck, wht

# not good, but answer is correct

VOWELS = %w(a i u e o)

def remove_vowels(strings)
  strings.map do |string|
    chars = string.split('')
    VOWELS.each { |vowel| chars.delete(vowel)}
    chars.join('')
  end
end

arr = %w(green, yellow, black, white)

p remove_vowels(arr)