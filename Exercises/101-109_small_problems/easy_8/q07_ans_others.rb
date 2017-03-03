def repeater(string)
  string.chars.map { |c| c * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# Comments
# 
# This solution first calls String#chars method on the string, which returns an array of characters that compose the original string. Then it calls Array#map method on the array to transform each of its elements into the same 2 characters, which we'll then transform into a string by calling String#join method.