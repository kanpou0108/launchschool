# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

p arr.index(5)
# returns 3

# Class: Array (Ruby 2.3.3)
# http://ruby-doc.org/core-2.3.3/Array.html#method-i-index
# Returns the index of the first object in ary such that the object is == to obj.

# p arr.index[5]
# error
# => 4_index.rb:12:in `<main>': undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)

p arr[5]
# returns 8

p arr.index