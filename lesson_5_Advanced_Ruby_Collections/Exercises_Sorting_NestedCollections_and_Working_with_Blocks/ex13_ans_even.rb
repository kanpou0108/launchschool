# Given the following data structure, return a new array containing the same sub-arrays as the original 
# but ordered logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr2 = [[6, 7], [4, 9], [8, 3]]
# The sorted array should look like this:

new_arr = arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.even?
  end
end

p new_arr
# => [[1, 4, 9], [1, 6, 7], [1, 8, 3]]

new_arr2 = arr2.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.even?
  end
end

p new_arr2
# => [[4, 9], [6, 7], [8, 3]]