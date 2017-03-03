# def cleanup(text)
#   text.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

def cleanup(text)
  array = text.chars.map do |char|
    # (char.upcase != char.downcase) || (char == "\'") ? char : ' '
    (char.upcase != char.downcase) ? char : ' '
  end
  # p array
  array.join.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '
