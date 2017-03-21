# Exercise 8
# 
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = []

hsh.each do |_, values|
  values.each do |word|
    word.chars do |letter|
      vowels << letter if letter.match(/[aieuo]/)
    end
  end
end

p vowels