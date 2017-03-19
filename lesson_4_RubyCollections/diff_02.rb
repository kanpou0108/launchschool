def a_method
  [1, 2, 3].each do |num|
    puts num
  end
end
# In this case, the last expression is [1, 2, 3].each, which has a return value of [1, 2, 3].

p a_method # => [1, 2, 3]