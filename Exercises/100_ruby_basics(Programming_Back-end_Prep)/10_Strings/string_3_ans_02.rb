name = 'Roger'

puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')

# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-casecmp-3F

# casecmp?(other_str) → true, false, or nil
# Returns true if str and other_other_str are equal after Unicode case folding, false if they are not equal, and nil if other_str is not a string.
# 
# "abcdef".casecmp?("abcde")     #=> false
# "aBcDeF".casecmp?("abcdef")    #=> true
# "abcdef".casecmp?("abcdefg")   #=> false
# "abcdef".casecmp?("ABCDEF")    #=> true
# "\u{e4 f6 fc}".casecmp?("\u{c4 d6 dc}") #=> true