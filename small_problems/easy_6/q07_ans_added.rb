def halvsies(array)
  first_half = array[0, (array.size / 2.0).ceil]
  second_half = array[first_half.size, array.size - first_half.size]
  [first_half, second_half]
end

# def halvsies(array)
#   first_half = array[0..(array.size / 2.0).ceil - 1]
#   p first_half
#   second_half = array[first_half.size..(array.size - 1)]
#   p second_half
#   [first_half, second_half]
# end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]


# Array#slice & Array#[] is same.
# a = [ "a", "b", "c", "d", "e" ]
# a[2] +  a[0] + a[1]    #=> "cab"
# a[6]                   #=> nil
# a[1, 2]                #=> [ "b", "c" ]
# a[1..3]                #=> [ "b", "c", "d" ]