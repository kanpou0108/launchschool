# What's My Value? (Part 8)
# 
# What will the following code print, and why? Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Solution
# If you said this would issue an error message or raise an exception, you are correct. The error is:
# undefined local variable or method `a' for main:Object (NameError)
# 
# Discussion
# Compared to the previous exercise, all we have done is remove the assignment of the a at the top level to after the block, and that has a completely different result.
# We now get an exception when the puts is executed because a is not defined. 
# It is undefined because a in the block is local to the block; it is local to the block because a was not previously defined prior to the block.