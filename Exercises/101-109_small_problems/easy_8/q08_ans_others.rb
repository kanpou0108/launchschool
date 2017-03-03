def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

def double_consonants(str)
  repeater(str).gsub(/([aeiou0-9\s\W])\1+/, '\1')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# Reusing the repeater method from the last exercise with regex. Replacing all of vowels, digits and spaces using gsub, 
# \1+ refers to one or more duplicates of the first group, \1 will replace duplicates with one of which we referred to.
