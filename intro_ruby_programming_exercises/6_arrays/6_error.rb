# You run the following code...
# 
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ...and get the following error message:
# 
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?

names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
names[3] = 'jody'

puts names
p names

# You are attempting to set the value of an item in an array using a string as the key. 
# Arrays are indexed with integers, not strings. 
# You would modify the array by doing the following: