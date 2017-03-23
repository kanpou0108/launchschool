# Exercise 12
# 
# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

# in: array of array
# out: hash

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# new_hash = arr.each_with_object({}) do |(key, value), hsh|
#   hsh[key] = value
# end

new_hash = {}

arr.each do |(key, value)|
  new_hash[key] = value
end

# arr.each_with_object({}) do |(key, value), hsh|
#   hsh[key] = value
# end
# p hsh
# ex_b_12.rb:24:in `<main>': undefined local variable or method `hsh' for main:Object (NameError)

p new_hash
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}