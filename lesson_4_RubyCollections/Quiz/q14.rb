# Question 14
# Within the code below, identify the method represented by some_method:
# 
# ['green', 'blue', 'red'].some_method do |word|
#   puts word
#   word.upcase
# end
# => ['GREEN', 'BLUE', 'RED']

new_arr = ['green', 'blue', 'red'].map do |word|
  puts word
  word.upcase
end

p new_arr