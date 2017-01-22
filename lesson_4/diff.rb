# We can iterate over an array or hash in a manual way by using loop, or we can iterate more idiomatically using each -- they're equivalent, for the most part. 
# One of the main differences between them, however, is the return value. Once each is done iterating, it returns the original collection. 
# We can verify this by testing it in irb.

# irb :001 > [1, 2, 3].each do |num|
# irb :002 >   puts num
# irb :003 > end

[1, 2, 3].each do |num|
  puts num
end