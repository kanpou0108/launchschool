# Given the array below, use loop to remove and print each name. 
# Stop the loop once names doesn't contain any more elements.
# Keep in mind to only use loop, not while, until, etc.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  name = names.shift
  puts name
  break if names.size == 0
end