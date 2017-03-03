# Get rid of duplicates without specifically removing any one value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Append
arr.push(11)
# Prepend
arr.unshift(0)
# Remove from end of array
arr.pop
# Append
arr << 3

# Does not modify calling object
arr.uniq
p arr

# Modifies the calling object
arr.uniq!
p arr
