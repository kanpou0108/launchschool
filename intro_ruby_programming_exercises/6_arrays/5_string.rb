# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

p "length:#{string.length}"
p a
p b
p c

# e
# A
# nil

p string[10]

# Notice that when you reference an array index that is beyond the length of the array, 
# Ruby returns nil and doesn't throw an error.