# Further Exploration
# Can you think of at least two additional ways to combine a first and last name into a full name?

first_name = 'John'
last_name = 'Doe'
full_name = first_name.concat(" #{last_name}")
puts full_name

# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-concat
# 
# str << integer → str
# concat(integer1, integer2,...) → str
# str << obj → str
# concat(obj1, obj2,...) → str
# Append—Concatenates the given object to str. If the object is an Integer, it is considered as a codepoint, and is converted to a character before concatenation. Concat can take multiple arguments. All the arguments are concatenated in order.
# 
# a = "hello "
# a << "world"   #=> "hello world"
# a.concat(33)   #=> "hello world!"
# a              #=> "hollo world!"
# 
# b = "sn"
# b.concat(b, b)    #=> "snsnsn"
