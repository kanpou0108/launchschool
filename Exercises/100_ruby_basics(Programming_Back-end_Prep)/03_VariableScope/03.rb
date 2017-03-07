# What's My Value? (Part 3)
# 
# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# Solution
# 7
# 
# Discussion
# Once again, the result is 7. 
# Once again, a inside the my_value is not visible outside my_value, and a at the top level is not visible inside my_value 
# because methods are self-contained with respect to local variables.
