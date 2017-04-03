# Exercise 10
# 
# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hsh|
  hsh.each_with_object({}) do |(k, v), incremented_hash|  # ← () is must. 
    incremented_hash[k] = v + 1
  end
end

p new_arr
# [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

# if () is omitted, this code raise error below:
# in this case, v is interpreted as {}.
# lesson_5_Advanced_Ruby_Collections/Exercises_Sorting_NestedCollections_and_Working_with_Blocks/ex_b_10_omitted.rb:9:in `block (2 levels) in <main>': undefined method `+' for {}:Hash (NoMethodError)
# 	from lesson_5_Advanced_Ruby_Collections/Exercises_Sorting_NestedCollections_and_Working_with_Blocks/ex_b_10_omitted.rb:8:in `each'
# 	from lesson_5_Advanced_Ruby_Collections/Exercises_Sorting_NestedCollections_and_Working_with_Blocks/ex_b_10_omitted.rb:8:in `each_with_object'
# 	from lesson_5_Advanced_Ruby_Collections/Exercises_Sorting_NestedCollections_and_Working_with_Blocks/ex_b_10_omitted.rb:8:in `block in <main>'
# 	from lesson_5_Advanced_Ruby_Collections/Exercises_Sorting_NestedCollections_and_Working_with_Blocks/ex_b_10_omitted.rb:7:in `map'
# 	from lesson_5_Advanced_Ruby_Collections/Exercises_Sorting_NestedCollections_and_Working_with_Blocks/ex_b_10_omitted.rb:7:in `<main>'
