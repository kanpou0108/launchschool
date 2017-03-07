# Further Exploration
# Can you think of at least two additional ways to combine a first and last name into a full name?

# first_name = 'John'
# last_name = 'Doe'
# full_name2 = first_name.insert(first_name.size, " #{last_name}")
# puts full_name2

first_name = 'John'
last_name = 'Doe'

# puts last_name.prepend(first_name + ' ')

puts last_name.insert(0, first_name + ' ')


# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-insert
# 
# insert(index, other_str) → str
# Inserts other_str before the character at the given index, modifying str. 
# Negative indices count from the end of the string, and insert after the given character. 
# The intent is insert aString so that it starts at the given index.
# 
# "abcd".insert(0, 'X')    #=> "Xabcd"
# "abcd".insert(3, 'X')    #=> "abcXd"
# "abcd".insert(4, 'X')    #=> "abcdX"
# "abcd".insert(-3, 'X')   #=> "abXcd"
# "abcd".insert(-1, 'X')   #=> "abcdX"
