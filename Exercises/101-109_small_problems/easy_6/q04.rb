# Reversed Arrays (Part 1)
# 
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.
# 
# You may not use Array#reverse or Array#reverse!.
# 
# Examples:

# ...failed...
def reverse!(ary)
  result = []
  index = -1
  loop do
    result << ary[index]
    index = index - 1
    break if ary[index] == nil
  end
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list 
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list 
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!([]) # => []
p list == []