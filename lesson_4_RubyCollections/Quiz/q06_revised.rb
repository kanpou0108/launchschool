# Question 6
# This method takes a string in standard sentence case and should return it in upper snake case:

# but it contains an error.
# Identify the line of code that is causing the error.

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    current_word += 1
    break if current_word == words.size

    words[current_word].upcase!
  end

  words.join('_')
end

sentence = 'The sky was blue'
p upper_snake(sentence)
# => "The_SKY_WAS_BLUE"

# わかんねえよ！