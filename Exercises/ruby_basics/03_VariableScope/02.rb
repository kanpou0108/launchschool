# What's My Value? (Part 2)
# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# Solution
# 7
# 
# Discussion
# This problem is identical to the previous problem. 
# The only thing we did is change the name b to a. 
# Note that we can do this because methods are self-contained with respect to local variables. 
# Variables outside the method are not visible inside the method, so the top level a is not available inside my_value. 
# Furthermore, variables inside the method are not visible outside the method, so the a inside my_value is a local variable with no top-level visibility.