x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  z = y
end
puts z

# What does x print to the screen in each case? 
# Do they both give errors? 
# Are the errors different? Why?

# ↓OUTPUT 
# => 3
# => 5_error.rb:12:in `<main>': undefined local variable or method `z' for main:Object (NameError)

# variable z is not available outside of the do/end block

# The second throws an error undefined local variable or method because z is not available 
# as it is created within the scope of the do/end block.

# The first prints 3 to the screen. 
# The second throws an error undefined local variable or method 
# because x is not available as it is created within the scope of the do/end block.
