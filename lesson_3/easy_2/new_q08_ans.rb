# Question 8
# 
# Shorten this sentence:
# 
# advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".
# 
# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".
# 
# As a bonus, what happens if you use the String#slice method instead?
# 
# Solution 8

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0, advice.index('house'))
p advice

# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-slice
# 
# slice(index) → new_str or nil
# slice(start, length) → new_str or nil
# slice(range) → new_str or nil
# slice(regexp) → new_str or nil
# slice(regexp, capture) → new_str or nil
# slice(match_str) → new_str or nil
# Element Reference — If passed a single index, returns a substring of one character at that index. If passed a start index and a length, returns a substring containing length characters starting at the start index. If passed a range, its beginning and end are interpreted as offsets delimiting the substring to be returned.
# 
# In these three cases, if an index is negative, it is counted from the end of the string. For the start and range cases the starting index is just before a character and an index matching the string’s size. Additionally, an empty string is returned when the starting index for a character range is at the end of the string.
# 
# Returns nil if the initial index falls outside the string or the length is negative.
# 
# If a Regexp is supplied, the matching portion of the string is returned. If a capture follows the regular expression, which may be a capture group index or name, follows the regular expression that component of the MatchData is returned instead.
# 
# If a match_str is given, that string is returned if it occurs in the string.
# 
# Returns nil if the regular expression does not match or the match string cannot be found.
# 
# a = "hello there"
# 
# a[1]                   #=> "e"
# a[2, 3]                #=> "llo"
# a[2..3]                #=> "ll"
# 
# a[-3, 2]               #=> "er"
# a[7..-2]               #=> "her"
# a[-4..-2]              #=> "her"
# a[-2..-4]              #=> ""
# 
# a[11, 0]               #=> ""
# a[11]                  #=> nil
# a[12, 0]               #=> nil
# a[12..-1]              #=> nil
# 
# a[/[aeiou](.)\1/]      #=> "ell"
# a[/[aeiou](.)\1/, 0]   #=> "ell"
# a[/[aeiou](.)\1/, 1]   #=> "l"
# a[/[aeiou](.)\1/, 2]   #=> nil
# 
# a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"] #=> "l"
# a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "vowel"]     #=> "e"
# 
# a["lo"]                #=> "lo"
# a["bye"]               #=> nil


# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-slice-21
# 
# slice!(integer) → new_str or nil
# slice!(integer, integer) → new_str or nil
# slice!(range) → new_str or nil
# slice!(regexp) → new_str or nil
# slice!(other_str) → new_str or nil
# Deletes the specified portion from str, and returns the portion deleted.
# 
# string = "this is a string"
# string.slice!(2)        #=> "i"
# string.slice!(3..6)     #=> " is "
# string.slice!(/s.*t/)   #=> "sa st"
# string.slice!("r")      #=> "r"
# string                  #=> "thing"
# 
