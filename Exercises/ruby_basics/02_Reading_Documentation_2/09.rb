# Included Modules
# 
# Ruby version 2.4.0 introduced an Array#min method not available in prior versions of Ruby; we wrote this exercise prior to that release. To follow along, please use the documentation for Ruby 2.3.0 here.
# Use irb to run the following code:

a = [5, 9, 3, 11]
p a.min

# Find the documentation for the #min method and modify the above program to print the two smallest values in the Array.
# 
# A solution using just the #min method requires version 2.2.0 or higher of Ruby. If you are using an older version of Ruby, you will need a different approach.
# Hide Solution & Discussion
# Solution

a = [5, 9, 3, 11]
p a.min(2)

# For pre-2.2.0 versions of Ruby

a = [5, 9, 3, 11]
p a.sort.take(2)

# Discussion
# If you look at the Array documentation, you won't find any mention of #min, nor will you find it in the Parent class, Object. However, it is obviously there - it works, after all. Where do you need to go to find the documentation for #min?
# 
# Some languages implement a feature called multiple inheritance. With MI, as it is often abbreviated, a class can inherit from two or more immediate superclasses. However, this leads to a lot of pitfalls. Many languages, including Ruby, avoid these pitfalls by not implementing MI.
# 
# Ruby uses something similar to MI, but without the worst of the pitfalls; the feature is called mix-ins; it provides a way of inheriting behavior from multiple places, but it does so by restricting what can be done with these mix-ins.
# 
# Mix-ins in ruby are provided by modules, and mix-ins are brought into a class by adding an appropriate include to the class. Once included, all of the methods defined in the mix-in become available to objects of the class.
# 
# One of the most commonly used mix-ins in ruby is the Enumerable module; it provides much of the functionality needed to iterate through collections such as Array, Hash, and Range. If you look on the left-hand side of the documentation for the Array class, you will see Enumerable listed under the heading of Included Modules. Click on Enumerable to view the Enumerable documentation.
# 
# Once you have the Enumerable documentation in front of you, scroll down to the documentation for #min. You can see from this documention (you have to look at the examples) that #min takes an optional argument that specifies how many values it should return. In our case, we want two values, so we alter our call to #min by adding the argument 2.
# 
# How do you know whether to look at the Included Modules or the Parent class for methods you can't find in the main documentation for a class? The truth is, there is no easy way to tell; you simply need to search until you find the documentation you need. Google can be your friend, as can the search feature on the ruby-doc.org site, but it can still be hard to find what you need.
# 
# If you're using a version of Ruby older than version 2.2.0, the #min method does not allow the form that lets you select more than one minimum value. Instead, you have to use an alternative approach to achieve the same result, Our alternative sorts the Array, then takes the first 2 elements, which will be the smallest.

# Module: Enumerable (Ruby 2.3.0)
# http://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-min
# 
# Class: Array (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Array.html#method-i-min

# Class: Array (Ruby 2.3.0)
# http://ruby-doc.org/core-2.3.0/Array.html   ← Ruby2.3.0では#minはArrayには存在しない。

# Module: Enumerable (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-min