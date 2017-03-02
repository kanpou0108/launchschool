# Look at Ruby's merge method. Notice that it has two versions. 
# What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.


h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

p h1
p h2
h1.merge(h2)
p h1
p h2

puts "---------------------------------"
p h1
p h2
h1.merge!(h2)
p h1
p h2

# .merge! is a destructive method

# The difference is merge! modifies permanently, while merge does not.
# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html#method-i-merge