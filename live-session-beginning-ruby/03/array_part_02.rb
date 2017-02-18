arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# ①
# select returns a new array that meets the criteria specified in the block.

# ②
# select returns a new array when the block evaluates to true.

# ③
# select returns a new array based on the block's *return value*. If it evaluates to true, then the element is selected.
# truthy / falsy

# odds = arr.select {|n| n.odd?}
# p odds

# odds = arr.select do |n|
#   n + 1
# end
# p odds

odds = arr.select do |n|
  n + 1
  puts n
end
p odds
# => [] 
# because nil evaluates false.