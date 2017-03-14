def print_id number
  puts "Before: In method object id = #{number.object_id}"
  number = 34
  puts "After: In method object id = #{number.object_id}"
end

value = 33
puts "Before: Outside method object id = #{value.object_id}"
print_id value
puts "After: Outside method object id = #{value.object_id}"
