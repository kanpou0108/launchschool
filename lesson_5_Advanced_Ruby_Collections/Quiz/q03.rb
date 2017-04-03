# Question 3
# Given the code below, select all the valid ways to return the value for the hash key :three.

arr = [
  {one: '1', two: 2},
  [{four: 5, three: 6}, :three],
  :three,
  {2=>:two, 3=>:three}
]

p arr[1][0][:three]
p arr[1][1]
p arr[2]
p arr[3][3]

# 6
# :three
# :three
# :three