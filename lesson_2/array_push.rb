def add_name(arr, name)
  arr << name
end

names = ['bob', 'kim']
puts names.inspect          # => ["bob", "kim", "jim"]
add_name(names, 'jim')
puts names.inspect          # => ["bob", "kim", "jim"]