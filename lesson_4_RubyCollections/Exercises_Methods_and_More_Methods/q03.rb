# Exercise 3
# 
# What is the return value of reject in the following code? Why?

ans = [1, 2, 3].reject do |num|
  puts num
end

p ans
# [1, 2, 3]