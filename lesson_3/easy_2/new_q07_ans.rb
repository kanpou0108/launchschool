# Question 7
# 
# In the previous exercise we added Dino to our array like this:
# 
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.
# 
# How can we add multiple items to our array? (Dino and Hoppy)
# 
# Solution 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

# p flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# =>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

# p flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
# =>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

p flintstones.push("Dino", "Hoppy") 
# =>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

# Class: Array (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Array.html#method-i-concat
# 
# concat(other_ary1, other_ary2,...) → ary
# Appends the elements of +other_ary+s to self.
# 
# [ "a", "b" ].concat( ["c", "d"] ) #=> [ "a", "b", "c", "d" ]
# [ "a" ].concat( ["b"], ["c", "d"] ) #=> [ "a", "b", "c", "d" ]
# [ "a" ].concat #=> [ "a" ]
# 
# a = [ 1, 2, 3 ]
# a.concat( [ 4, 5 ] )
# a                                 #=> [ 1, 2, 3, 4, 5 ]
# 
# a = [ 1, 2 ]
# a.concat(a, a)                    #=> [1, 2, 1, 2, 1, 2]
# See also Array#+.
# 

# Class: Array (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Array.html#method-i-push
# 
# push(obj, ... ) → ary
# Append — Pushes the given object(s) on to the end of this array. This expression returns the array itself, so several appends may be chained together. See also #pop for the opposite effect.
# 
# a = [ "a", "b", "c" ]
# a.push("d", "e", "f")
#         #=> ["a", "b", "c", "d", "e", "f"]
# [1, 2, 3].push(4).push(5)
#         #=> [1, 2, 3, 4, 5]
