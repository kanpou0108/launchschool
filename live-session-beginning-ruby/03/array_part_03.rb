arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# ①
# map returns a new array based on the transformation specified in the block.

# ②
# map returns a new array based on the block's *return value*. Each element is transformed based on the *return value*.

# incremented = arr.map { |n| n + 1 }
# p incremented


# incremented = arr.map do |n|
#   # n > 1
#   n.odd?
# end
# p incremented
# => [true, false, true, false, true, false, true, false, true, false]

# incremented = arr.map do |n|
#   puts n
# end
# p incremented
# => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]

incremented = arr.map do |n|
  "hi"
end
p incremented
# => ["hi", "hi", "hi", "hi", "hi", "hi", "hi", "hi", "hi", "hi"]