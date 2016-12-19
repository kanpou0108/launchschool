def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# [44] pry(main)> a=[1, 2, 3]
# => [1, 2, 3]
# [45] pry(main)> b=['a', 'b', 'c']
# => ["a", "b", "c"]
# [47] pry(main)> a.zip b
# => [[1, "a"], [2, "b"], [3, "c"]]