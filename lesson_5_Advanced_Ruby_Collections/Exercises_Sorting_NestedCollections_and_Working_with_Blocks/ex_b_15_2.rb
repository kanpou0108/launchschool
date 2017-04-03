# Exercise 15
# 
# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# failed
# new_arr = arr.select do |hsh|
#   hsh.select do |k, v|
#     v.select do |sub_arr|
#       # sub_arr.all? {|el| el.even?}
#       p sub_arr
#     end
#   end
# end
# 
# p new_arr

# failed
# new_arr = arr.select do |hsh|
#   hsh.select do |_, sub_arr|
#     sub_arr.all? { |el| el.even? }
#   end
# end
# selectの後のblockはallになる

new_arr = arr.select do |hsh|
  hsh.all? do |_, sub_arr|
    sub_arr.all? { |el| el.even? }
  end
end

p new_arr