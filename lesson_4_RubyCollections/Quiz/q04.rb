def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

sentence = 'The sky was blue'
p snake(sentence) 
# => "The_sky_was_blue"
sentence2 = 'The'
p snake(sentence2)
# lesson_4_RubyCollections/Quiz/q04.rb:6:in `block in snake': undefined method `downcase!' for nil:NilClass (NoMethodError)
# 	from lesson_4_RubyCollections/Quiz/q04.rb:5:in `loop'
# 	from lesson_4_RubyCollections/Quiz/q04.rb:5:in `snake'
# 	from lesson_4_RubyCollections/Quiz/q04.rb:19:in `<main>' 
