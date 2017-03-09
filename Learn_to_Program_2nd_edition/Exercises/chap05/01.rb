# Full Name Greeting
# How you could do it:
puts 'What is your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'What is your last name?'
l_name = gets.chomp
full_name = f_name + ' ' + m_name + ' ' + l_name
puts 'Hello, ' + full_name + '!'
 
# What is your first name?
# Sam
# What is your middle name?
# I
# What is your last name?
# Am
# Hello, Sam I Am!
# How I would do it:
# 
# puts "What's your first name?"
# f_name = gets.chomp
# puts "What's your middle name?"
# m_name = gets.chomp
# puts "What's your last name?"
# l_name = gets.chomp
# puts "Chris Pine is cooler than you, #{f_name} #{m_name} #{l_name}."