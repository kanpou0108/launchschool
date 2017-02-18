# ---- 2 variables; 1 object
a = "hello"
b = a

b << " world"

puts a
# =>hello world
puts b
# =>hello world

a += b
# ---- 2 variables; 2 object
b << " universe"

puts a
# => hello worldhello world
puts b
# => hello world universe
