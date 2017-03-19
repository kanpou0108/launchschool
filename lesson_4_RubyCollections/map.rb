a = [1, 2, 3].map do |num|
  num.odd?
end
p a

b = [1, 2, 3].map do |num|
  num.odd?
  puts num
end
p b

# It's a little tricky, but you should now have all the necessary information to evaluate this code properly. Take a few minutes to deconstruct the above example and try to guess the return value of the code above.
# 
# By looking at the last expression within the block, we know that the return value of the block will always be nil. map doesn't care about truthiness, and takes this return value as the transformation criteria. Therefore, the collection returned by map is a new array of nils.

c = [1, 2, 3].map do |num|
  'hi'
end
p c
