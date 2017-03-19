# Exercise 5
# 
# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

# Solution 5
puts flintstones.index { |name| name[0, 2] == "Be" }