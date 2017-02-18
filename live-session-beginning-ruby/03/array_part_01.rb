arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

idx = 0

# loop do
#   puts arr[idx]
#   idx += 1
#   break if idx == arr.size
# end
# =>nil

# arr.each do |n|
#   puts n if n > 5
# end
# => original array(receiver)

arr << 12
# p arr

arr.unshift(0)
p arr

arr.pop
p arr

arr << 3
p arr

# remove the redundant value. (destructive)
arr.uniq!
p arr