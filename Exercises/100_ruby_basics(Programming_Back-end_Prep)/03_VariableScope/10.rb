# What's My Value? (Part 10)
# 
# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# Solution
# If you said this would issue an error message or raise an exception, you are correct. The error is:
# undefined method `+' for nil:NilClass (NoMethodError)
# 
# Discussion
# a at the top level is not visible inside the block because the block is inside my_value, and methods are self-contained with respect to local variables. 
# Since the outer a is not visible inside my_value, it isn't visible inside the block.
