USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'


# Discussion
# In this exercise, we solicit two pieces of information, the user name and password, and validate the two entries together. The process is very similar to our established input loop pattern, except we now solicit two different items in the loop. To do this, we need an extra call to both #puts and #gets.
# 
# As with the previous exercise, passwords are treated as case sensitive. User names vary a bit. On some systems, the user name is case sensitive, while on others, it is case insensitive. Our solution assumes that user names are case sensitive, but can easily be converted to case insensitive by changing line 6 to read:
# 
# user_name = gets.chomp.downcase
# Soliciting two bits of information that are tightly coupled like this is not very common - usually, you want to validate each entry separately. We'll show this in a later exercise.
# 
# This exercise should not be used as a model for how to deal with user names and passwords in real programs. The purpose of this program is to provide a demonstration of obtaining two inputs in an input loop.