# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
arr.delete_if { |word| word.start_with?("s") }
p arr

arr.delete_if { |word| word.start_with?("s", "w") }
p arr


# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-start_with-3F

# start_with?([prefixes]+) → true or false
# Returns true if str starts with one of the prefixes given.
# 
# "hello".start_with?("hell")               #=> true
# 
# # returns true if one of the prefixes matches.
# "hello".start_with?("heaven", "hell")     #=> true
# "hello".start_with?("heaven", "paradise") #=> false


# Class: Array (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Array.html#method-i-delete_if
# delete_if { |item| block } → ary
# delete_if → Enumerator
# Deletes every element of self for which block evaluates to true.
# 
# The array is changed instantly every time the block is called, not after the iteration is over.
# 
# See also #reject!
# 
# If no block is given, an Enumerator is returned instead.
# 
# scores = [ 97, 42, 75 ]
# scores.delete_if {|score| score < 80 }   #=> [97]