# irb :001 > [1, 2, 3].select do |num|
# irb :002 >   num + 1
# irb :003 > end
# => [1, 2, 3]

# [1, 2, 3].select do |num|
#   num + 1
# end

a = [1, 2, 3].select do |num|
  num + 1
  puts num
end

p a

# select will now return an empty array. Why is that? Since puts num was placed on the last line within the block, it is now the last expression in the block. This means that the implicit return value of the block is now changed. We know that puts always returns nil, therefore the return value of the block will now be nil, which is considered a "falsey" value. In other words, select won't select any elements because the return value will always be falsey.

# The above code can sometimes happen if you're debugging and inadvertently leave a trailing puts as the last expression of a block or method. 
# A seemingly harmless puts can dramatically affect your program.

