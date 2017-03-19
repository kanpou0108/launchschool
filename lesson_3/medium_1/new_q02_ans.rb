# Question 2
# 
# The result of the following statement will be an error:
# 
# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?
# 
# Solution 2
# This will raise an error TypeError: no implicit conversion of Fixnum into String because (40+2) results in an integer and it is being concatenated to a string.
# 
# To fix this either call

# (40+2).to_s
# or use string interpolation:

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"
