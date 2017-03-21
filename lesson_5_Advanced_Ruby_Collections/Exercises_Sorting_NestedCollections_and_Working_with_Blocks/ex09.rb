# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.each do |elem|
  elem.sort!.reverse!
end

# eachでは元の配列(receiver)が返ってくるだけ
# new_arr = arr.each do |elem|
#   elem.sort.reverse
# end
# => [["b", "c", "a"], [2, 1, 3], ["blue", "black", "green"]]

p new_arr