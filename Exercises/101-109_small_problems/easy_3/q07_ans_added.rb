# Lonnie Coffman
# about a month ago
# two solutions

def oddities(array)
  new_array = []
  array.each_with_index { |val, idx| new_array << val if idx.even? }
  new_array
end

def oddities(array)
  array.select.each_with_index { |_, idx| idx.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

