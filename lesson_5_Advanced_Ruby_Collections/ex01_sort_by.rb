arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort_by do |a|
  a.to_i
end

p new_arr.reverse