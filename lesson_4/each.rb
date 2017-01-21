# each
# So far, we've learned that the most effective option for iterating over a collection is to use a loop, like this:

numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

# Iterating over a collection is such a common task that Ruby provides a method to do just that. The each method is functionally equivalent to using loop and represents a simpler way of accomplishing the same task. Here's an example that produces the same result as the implementation above:

[1, 2, 3].each do |num|
  puts num
end

# In this example, we're working with an array.
# 
# [1, 2, 3]
# each is a method that's being called on the array.
# 
# .each
# The method takes a block, which is the do … end part.
# 
#                do |num|
#   puts num
# end
# The code within the block is executed for each iteration. In this case the code within the block is puts num which means each element in the array will be output by the puts method.
# 
# How does the block know what num is? For each iteration, each sends the value of the current element to the block in the form of an argument. 
# In this block, the argument to the block is num and it represents the value of the current element in the array.
# 
