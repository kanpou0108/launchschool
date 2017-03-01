# What will the following programs return? 
# What is value of arr after each?

arr = ["b", "a"]
p arr = arr.product(Array(1..3))
# [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
p arr.first.delete(arr.first.last)
# will delete 1 from ["b", 1] and return 1
p arr

puts "----------------------------"

arr = ["b", "a"]
p arr = arr.product([Array(1..3)])
# [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
p arr.first.delete(arr.first.last)
# will delete "[1, 2, 3]" from ["b", [1, 2, 3]] and return [1, 2, 3]
p arr
