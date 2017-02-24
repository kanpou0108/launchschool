# 38:38
  # ruby is a easy language to digest, but there is a lot of complexity behind it.
  # it is not so simple to understand.
# 40:33

arr = [1, 2, 3, 4]

cnt = 0
sum = 0

loop do
  sum += arr[cnt]
  cnt += 1
  break if cnt == arr.size
  
  new_var = "hello"
end

# puts new_var
puts "your total is #{sum}"
# => local_variable_scope.rb:19:in `<main>': undefined local variable or method `new_var' for main:Object (NameError)

# inside block
# outside block

# local variable that is assigned outside the block can be accessed from inside the block.
# but, local variable that is assigned outside the block cannot be accessed from outside the block.