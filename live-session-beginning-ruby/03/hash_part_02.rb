hsh = {a:1, b:2, c:3, d:4}

# p hsh[:b]

hsh[:e] = 5
# p hsh

# hsh.each do |k, v|
#   puts "key is #{k}, value is #{v}"
# end

# hsh.each do |k, v|
#   puts "key is #{k}, value is #{v}" if v < 3.5
# end

small_vals = hsh.select do |k, v|
  puts "key is #{k}, value is #{v}" if v < 3.5
end
