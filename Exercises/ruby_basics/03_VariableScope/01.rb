# Give us your feedback
# What's My Value? (Part 1)
# 
# What will the following code print and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# Solution
# 7
# 
# Discussion
# Assignment, including assignment operators like +=, does not mutate a variable, but changes the object that variable references. 
# Since only the reference for b is changed, no alteration is made to the value referenced by a. 
# Thus, a is still equal to 7 at the time of the puts.
# 
# Another way to look at this is that numbers in ruby are immutable. 
# Thus, there is no way for my_value to mutate the value referenced by b. 
# Thus, a is not changed by my_value.