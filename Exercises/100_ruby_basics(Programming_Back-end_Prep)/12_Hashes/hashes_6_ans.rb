numbers = {
  high:   100,
  medium: 50,
  low:    10
}
half_numbers = numbers.map do |key, value|
                 value / 2
               end

p half_numbers

# Discussion
# 
# Hash#map works similarly to Array#map except for two notable differences. 
# First, Hash#map has two block parameters, instead of one, to account for both the key and the value. 
# Second, you might expect Hash#map to return a Hash, but it actually returns an Array. 
# This is because #map creates a new Array based on the return value of the block regardless of the data structure it is used on.

# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html
# 
# Module: Enumerable (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-map
# 
# map { |obj| block } → array
# map → an_enumerator
# Returns a new array with the results of running block once for every element in enum.
# 
# If no block is given, an enumerator is returned instead.
# 
# (1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
# (1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]
