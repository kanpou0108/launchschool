arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hsh = {a:1, b:2, c:3, d:4}
hsh[:e] = 5

arr << hsh
p arr

hsh[:f] = 6
p arr