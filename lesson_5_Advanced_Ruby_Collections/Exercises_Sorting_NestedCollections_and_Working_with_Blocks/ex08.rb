# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = []

hsh.each_value do |arr|
  arr.each do |word|
    word.each_char do |chr|
      vowels << chr if chr =~ /[aiueo]/
    end
  end
end

p vowels