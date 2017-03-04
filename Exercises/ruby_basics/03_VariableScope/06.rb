# What's My Value? (Part 6)
# 
# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# Solution
# If you said this would issue an error message or raise an exception, you are correct. The error is:
# `my_value': undefined local variable or method `a' for main:Object (NameError)
# 
# Discussion
# Even though a is defined before my_value is defined, it is not visible inside my_value. 
# Methods are self contained with respect to local variables; local variables defined inside the method are not visible outside the method, and local variables defined outside the method are not visible inside the method.
# 
# Note, however, that local variables will be visible (via closures) inside blocks, procs, and lambdas.