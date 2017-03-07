name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# Approach/Algorithm
# String#casecmp compares the value of two strings while ignoring the case of both strings.
# 
# Discussion
# Typically, when comparing strings, the goal is to compare their values, regardless of whether the characters are uppercase or lowercase. In the solution, we perform that exact comparison by using String#casecmp, the case-insensitive version of String#<=>. If you're unfamiliar with #casecmp then you might be surprised to see a numerical return value instead of a boolean.
# 
# #casecmp performs a case-insensitive comparison, meaning it ignores the case of each character. When both compared strings are equal, #casecmp will return 0. That's why, in the solution, we needed the comparison with 0. If the return value equals 0, then we know both strings are equal.
# 
# What if both strings aren't equal? If the value of the calling string - name - is less than the provided argument - 'RoGeR' - then #casecmp will return -1. Similarly, if the provided argument is less than the calling string, #casecmp will return 1.

# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-casecmp

# casecmp(other_str) → -1, 0, +1 or nil
# Case-insensitive version of String#<=>. Currently, case-insensitivity only works on characters A-Z/a-z, not all of Unicode. 
# This is different from casecmp?.
# 
# "abcdef".casecmp("abcde")     #=> 1
# "aBcDeF".casecmp("abcdef")    #=> 0
# "abcdef".casecmp("abcdefg")   #=> -1
# "abcdef".casecmp("ABCDEF")    #=> 0
