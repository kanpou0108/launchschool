# The for loop
# 
# So far, we've been using the Kernel#loop method in the examples to illustrate how to loop over a collection. But that's just one of many different ways to loop in Ruby. For example, the for loop produces the same result as loop:

alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end

# To print each character, we just had to call the String#chars method on alphabet which splits each character into its own element in an array. In this example, char represents the value of the current element in the array.
# 
# You can think of loop or for as interchangeable syntax, but we're going to use loop for consistency. You might see for being used elsewhere; don't worry about the syntax, the underlying concepts covered in this assignment still remains.