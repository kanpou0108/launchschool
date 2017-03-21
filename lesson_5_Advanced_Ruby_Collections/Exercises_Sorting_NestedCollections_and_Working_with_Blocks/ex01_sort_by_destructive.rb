arr = ['10', '11', '9', '7', '8']

arr.sort_by! do |a|
  a.to_i
end

p arr.reverse