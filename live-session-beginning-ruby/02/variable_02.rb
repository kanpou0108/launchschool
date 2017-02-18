# ---- 2 variables; 1 object
a = "hello"
b = a

b << " world"

puts a
# =>hello world
puts b
# =>hello world

a = "hey"
# ---- 2 variables; 2 object
b << " universe"

puts a
# => hey
puts b
# => hello world universe
