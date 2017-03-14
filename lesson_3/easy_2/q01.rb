# Question 1
# In this hash of people and their age,
# 
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# 
# see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well for this solution?

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages["Spot"] = 30
# p ages

p ages.key?("Spot")

# Bonus Answer:
# Hash#include? and Hash#member?    all same!

# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html#method-i-include-3F

# include?(key) → true or false
# Returns true if the given key is present in hsh.
# 
# h = { "a" => 100, "b" => 200 }
# h.has_key?("a")   #=> true
# h.has_key?("z")   #=> false
# Note that include? and member? do not test member equality using == as do other Enumerables.
# 
# See also Enumerable#include?
# 

# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html#method-i-member-3F
# 
# member?(key) → true or false
# Returns true if the given key is present in hsh.
# 
# h = { "a" => 100, "b" => 200 }
# h.has_key?("a")   #=> true
# h.has_key?("z")   #=> false
# Note that include? and member? do not test member equality using == as do other Enumerables.
# 
# See also Enumerable#include?

# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html#method-i-key-3F
# 
# key?(key) → true or false
# Returns true if the given key is present in hsh.
# 
# h = { "a" => 100, "b" => 200 }
# h.has_key?("a")   #=> true
# h.has_key?("z")   #=> false
# Note that include? and member? do not test member equality using == as do other Enumerables.
# 
# See also Enumerable#include?