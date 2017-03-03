# Transpose MxN
# 
# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.
# 
# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed by simply switching columns with rows.
# 
# Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.
# 
# Examples:

# ...failed...
def transpose(matrix)
  # new_matrix = Array.new(matrix.size) { [] }
  # 
  # matrix.size.times do |idx|
  #   matrix.each do |elem|
  #     new_matrix[idx] << elem[idx]
  #   end
  # end
  # new_matrix
  
  arr_size = matrix.size 
  result = []
  (0..arr_size).each do |column_index|
    new_row = (0..arr_size).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
    
end

p transpose([[1, 2, 3, 4]])
p transpose([[1], [2], [3], [4]])

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
