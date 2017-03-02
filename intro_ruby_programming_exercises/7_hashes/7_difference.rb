# Given the following code...

# What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# my_hash uses a symbol x as a key
# my_hash2 uses the string value of x as the key

puts my_hash
puts my_hash2

# Solution
# The first hash that was created used a symbol x as the key. 
# The second hash used the string value of the x variable as the key.
