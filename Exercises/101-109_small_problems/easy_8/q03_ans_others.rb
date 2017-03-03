def substrings_at_start(string)
  substring = ''
  result = []
  string.each_char do |char|
    substring += char
    result << substring
  end
  result
end

# Note that if we use substring << char instead of substring += char at line 5 
# it's gonna mutate the previous substrings already added to result over and over, and 
# we don't want that! Using += just reassigns a new object to substring.

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']