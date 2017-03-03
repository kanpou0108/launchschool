# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. 
# Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# Examples:
# 
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(words)
  ary = []
  words.split.each do |word|
    if word.size > 4
      ary << word.split('').reverse.join
      # String#reverseを使えば、上記の様にArrayに分割する必要なし。
    else
      ary << word
    end
  end
  ary.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

