WORDS = {
  NOUN: %w(dog cat chimp snake spider),
  ADJECTIVE: %w(blue goopy huge spotted),
  VERB: %w(jumps rides chases cons),
  ADVERB: %w(quickly happily lazily perfunctorily)
}.freeze

def display_madlib(file_name)
  file_text = ''
  open(file_name) { |f| file_text = f.read }
  lib_words = []

  file_text.scan(/{(\w+)}/) { |w| lib_words << WORDS[w[0].upcase.to_sym].sample }
  while lib_words.size > 0
    file_text.sub!(/{\w+}/, lib_words.shift)
  end

  file_text
end

# madlib.txt: The {adjective} {noun} {adverb} {verb} the {adjective} {noun}!
puts display_madlib('madlib.txt')