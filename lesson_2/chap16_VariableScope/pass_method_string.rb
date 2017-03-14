def print_id str2
  puts "Before: In method object id = #{str2.object_id}"
  str2 = "inner"
  puts "After: In method object id = #{str2.object_id}"
end

str1 = "outer"
puts "Before: Outside method object id = #{str1.object_id}"
print_id str1
puts "After: Outside method object id = #{str1.object_id}"
