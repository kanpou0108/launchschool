# Building and Sorting an Array
# How you could do it:

puts 'Give me some words, and I will sort them:'
words = []
while true
  word = gets.chomp 
  if word == ''
    break 
  end
  words.push word
end
puts 'Sweet!  Here they are, sorted:'
puts words.sort