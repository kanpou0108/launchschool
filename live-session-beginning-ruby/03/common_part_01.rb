arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p (arr.all? { |n| n < 9 })

p (arr.all? { |n| n < 11 })

p (arr.any? { |n| n < 9 })

p (arr.any? { |n| n < 11 })
