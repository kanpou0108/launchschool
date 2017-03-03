def double_consonants(strings)
  result = ''
  strings.each_char do |char|
    if char.match(/[aeiou0-9\!\ \-]/)
      result << char
    else
      result << char << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# Double Char (Part 2)
# 
# Write a method that takes a string, and returns a new string in which every consonant character is doubled. 
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
# 
# Examples:
