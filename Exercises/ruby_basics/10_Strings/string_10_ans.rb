# Are You There?
# 
# Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. 
# Then, print true if colors includes the color 'purple' and print false if it doesn't.
# 
# colors = 'blue pink yellow orange'
# 
# Expected output:
# 
# true
# false

# Solution

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

# Discussion
# 
# To check if a given string includes a specific character or word, we can use String's #include? method. #include? checks the calling string for the provided argument and returns true if the argument is included and false if it isn't.
# 
# This way of checking a string for a value is also useful for validating user input. Say you want to return true if a user enters a form of confirmation, like 'yes' or 'yeah', you could do something like this:
# 
# user_input = gets.chomp.downcase
# 'yes yeah'.include?(user_input)
# This is useful, however, it would be more appropriate to use an array in this case, like so:
# 
# user_input = gets.chomp.downcase
# ['yes', 'yeah'].include?(user_input)

# The result is the same, but using an array is preferred when there's more than one value.

# 
# Further Exploration
# 
# Let's say color is changed to the following value:
# 
# colors = 'blue boredom yellow'
# and we invoke #include? as we did before:
# 
# puts colors.include?('red')
# What will the output be? Why?