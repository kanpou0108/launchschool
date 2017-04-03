# Question 12
# Within the code below, identify the method represented by some_method:
# 
# ['a', 'b', 'c'].some_method do |item|
#   puts item
# end

# => []

new_arr = ['a', 'b', 'c'].select do |item|
  puts item
end

p new_arr