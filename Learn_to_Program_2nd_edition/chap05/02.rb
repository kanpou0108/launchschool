# Bigger, Better Favorite Number
# How you could do it:

puts 'Hey!  What\'s your favorite number?'
fav_num = gets.chomp.to_i
better_num = fav_num + 1
puts 'That\'s ok, I guess, but isn\'t '+better_num.to_s+' just a bit better?'

# Hey!  What's your favorite number?
# 5
# That's ok, I guess, but isn't 6 just a bit better?

# How I would do it:
# puts "Hey!  What's your favorite number?"
# fav_num = gets.chomp.to_i
# puts "That's ok, I guess, but isn't #{fav_num + 1} just a bit better?"

# Hey!  What's your favorite number?
# 5
# That's ok, I guess, but isn't 6 just a bit better?