# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
# => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

p hsh

# Although this task may at first seem complicated because the collection contains different object types, sometimes nested three levels deep, you only really have to work at the initial sub-level in order to reach a solution. Remember that any Ruby object can be a hash key and any Ruby object can be a hash value.

