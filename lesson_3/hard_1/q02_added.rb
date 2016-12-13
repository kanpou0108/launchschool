# What is the result of the last line in the code below?

greetings = { a: 'hi' }
# informal_greeting = greetings[:a].clone
# informal_greeting << ' there'

informal_greeting = greetings[:a]
informal_greeting = informal_greeting + ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The output is {:a=>"hi there"}. The reason is because informal_greeting is a reference to the original object.

# we could initialize informal_greeting with a reference to a new object containing the same value by i
# nformal_greeting = greetings[:a].clone.
# we can use string concatenation, informal_greeting = informal_greeting + ' there', 
# which returns a new String object instead of modifying the original object.
# 
