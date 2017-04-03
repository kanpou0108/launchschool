# Question 16
# Carefully examine the following code example.
# 
# pets = ['cat', 'parrot', 'dog', 'fish']
# pets.map do |pet|
#   pet.size == 3
# end
# 
# Based on your observations of the code example, select all statements below which are true.

pets = ['cat', 'parrot', 'dog', 'fish']
new_arr = pets.map do |pet|
  pet.size == 3
end

p new_arr
# => [true, false, true, false]