def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

# char.ord.chr == char
# Class: Integer
# Method Name: chr
# Syntax: 65.chr #=> "A"
# Docs: Returns a string containing the character represented by the Integer's value according to encoding (ASCII).
# char = "a"
char = 'a'
p char.ord.chr == char
# => true 

# Dealing with encoding.
p 97.chr(Encoding::UTF_8) == char
# => true

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0