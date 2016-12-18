# Further Exploration
# An even shorter solution is possible by using either inject or each_with_object. Just for fun, read about these methods in the Enumerable module documentation, and try using one in your reverse method.

# reduce (inject) method:
# result: accumulator, el: element iterated through
def reverse(arr)
  arr.reduce([]) { |result, el| result.unshift el }
end

# each_with_object method
# el: element iterated through, result: object
def reverse(arr)
  arr.each_with_object([]) { |el, result| result.unshift el }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p reverse([])
puts "---------------------------------"
list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true