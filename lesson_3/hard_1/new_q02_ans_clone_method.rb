# Question 2
# 
# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a].clone
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
# => {:a=>"hi"}