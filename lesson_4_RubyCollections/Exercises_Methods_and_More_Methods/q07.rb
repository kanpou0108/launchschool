# Exercise 7
# 
# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code. What gets output by this code?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => 1