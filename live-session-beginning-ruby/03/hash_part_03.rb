hsh = {a:1, b:2, c:3, d:4}

hsh[:e] = 5

# small_vals = hsh.select do |k, v|
#   v < 3.5
# end
# p small_vals

small_vals = hsh.select do |k, v|
  v < 3.5
end
p small_vals
