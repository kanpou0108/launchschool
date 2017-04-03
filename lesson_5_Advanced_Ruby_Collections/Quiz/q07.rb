# Question 7
# Examine closely the following code:

new_arr = [['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end

# Without running the code, identify the matching description.

p new_arr