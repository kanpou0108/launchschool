# Keyword Arguments
# 
# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# Solution
# 
# 5
# 8
# Discussion
# 
# Finding the documentation for #step can be a bit difficult since there are so many different types of number classes in ruby. Even a google search is likely to turn up a lot of false leads. If you need a method that works with numbers, the following classes are worth searching through:
# 
# Fixnum
# Integer
# Float
# Numeric
# Math
# Fixnum inherits from Integer; Integer and Float inherit from Numeric. Numeric is basically the superclass of all things numeric, while Math is a module that supplies a lot of number crunching functionality. Choosing the right documentation to look at is difficult, so, for now, just be aware that you may have to look in multiple locations.
# 
# As it happens, #step is described in the Numeric class documentation. #step can be called in 4 different ways, but the way we're interested in is the first one listed. In this version, #step takes two keyword arguments (also called named arguments, :by and :step (keyword arguments are named by symbols). This shows up in our method signature:
# 
# step(by: step, to: limit) { |i| block } → self
# The argument named :by can be seen to be a "step" value, while the argument named :to is some sort of limit. The text below the signature shows that the "step" value indicates how much the index is incremented by with each iteration, while the "limit" is the largest value; if the index exceeds this value, the loop exits.
# 
# We can also see that #step takes a loop in this first form, and that the block will be executed for each value in the iteration.
# 
# Given all of this information, we can see that the code will print 5 on its first iteration, 8 on the second iteration, and then quit because 11 > 10

# Class: Numeric (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Numeric.html#method-i-step
# 
# Class: Integer (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Integer.html
# Parent: Numeric