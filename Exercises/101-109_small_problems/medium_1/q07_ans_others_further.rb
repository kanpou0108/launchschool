NUMBERS = %w(zero one two three four five six seven eigth nine).freeze

def word_to_digit(string)
  string.split.map do |word|
    if word =~ /(\w+)(\W+)/
      NUMBERS.include?("#{$1}") ? NUMBERS.index("#{$1}").to_s + "#{$2}" : word
    else
      NUMBERS.include?(word) ? NUMBERS.index(word) : word
    end
  end.join(' ')
end

def word_to_phn_number(string)
  new_string = word_to_digit(string)
  new_string.gsub!(/(\d)\s/, '\1')
  new_string.gsub(/(\d{3})(\d{3})(\d{4})/) {
    format("(%d) %d-%d", "#{$1}", "#{$2}", "#{$3}")
  }
end

p word_to_phn_number('Please call me at five five five one two three four
                      five six seven. Thanks.')
# => "Please call me at (555) 123-4567. Thanks."

# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'