# Look at several Rails/Ruby online API sources and say which one you like best and why.

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
