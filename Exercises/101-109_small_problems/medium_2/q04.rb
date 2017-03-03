# Matching Parentheses?
# 
# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# 
# Examples:
# 
# Note that balanced pairs must each start with a (, not a ).

# ...failed...

def balanced?(strings)
  word = strings.scan(/[\(\)]/).join
  return true if word == ''
  
  word_before, word_after = word, ''    
  
  while word_before != word_after
    p word_before, word_after
    sleep 1
    word_before, word_after = word, ''    
    word_after = word.gsub!('()', '')
    return true if word == ''  
  end
  
  return false
end

p balanced?('((What) (is this))?') 

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
