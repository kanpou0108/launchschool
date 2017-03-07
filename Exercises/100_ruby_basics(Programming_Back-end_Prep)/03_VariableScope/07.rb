# What's My Value? (Part 7)
# 
# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Solution
# 3
# 
# Discussion
# We are now dealing with blocks; the rules for blocks differ from the rules for methods. 
# In methods, local variables are self-contained. 
# Not so in blocks; blocks can use and modify local variables that are defined outside the block.
# 
# In this case, a starts out as 7, then we set a to 1, 2 and 3 in sequence.
# By the time we get to the puts, a has a value of 3.
