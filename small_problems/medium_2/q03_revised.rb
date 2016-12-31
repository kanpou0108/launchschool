def letter_percentages(strings)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  strings.chars.each do |elem|
    case elem
    when /[a-z]/
      count_hash[:lowercase] += 1
    when /[A-Z]/
      count_hash[:uppercase] += 1
    when /[^a-zA-Z]/
      count_hash[:neither] += 1
    end
  end
  
  sum = 0.0
  count_hash.values.each do |value|
    sum += value
  end
  
  count_hash.each do |k, v|
    count_hash[k] = (v / sum) * 100
  end
  count_hash
end

# p letter_percentages('abCdef 123')
# p letter_percentages('AbCd +Ef')
# p letter_percentages('123')

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Lettercase Percentage Ratio
# 
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.
# 
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.
# 
# You may assume that the string will always contain at least one character.
# 
# Examples

