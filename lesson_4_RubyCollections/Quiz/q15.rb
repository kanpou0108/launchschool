# Question 15
# Within the code below, identify the method represented by some_method:
# 
# {a: 1, b: 2, c: 3, d: 4, e: 5}.some_method do |_, num|
#   plus_one = num + 1
#   puts "#{num} plus 1 is #{plus_one}"
# end
# => {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5}

new_hsh = {a: 1, b: 2, c: 3, d: 4, e: 5}.each do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end

p new_hsh
# => {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}