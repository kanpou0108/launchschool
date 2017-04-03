# Question 5
# This method takes a string in standard sentence case and should return it in camel case:

# but it contains an error.
# 
# Identify the line of code that is causing the error.

def camel(str)
  words = str.split(' ')
  counter = 0

  while counter < words.size
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end

sentence = 'The sky was blue'
p camel(sentence) # => 'TheSkyWasBlue'