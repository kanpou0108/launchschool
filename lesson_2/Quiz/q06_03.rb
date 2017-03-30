def longest_word(sentence)
  words = sentence.split
  saved_word = words.shift

  words.each do |word|
    if word.length >= saved_word.length
      saved_word = word
    end
  end

  saved_word
end

sentence = "a bc def ghij jklmn opqrs"
p longest_word(sentence)