def some_method
  a = 1
  1.times do
    puts a
    b = 2
  end

  puts a
  puts b
end

some_method     # => NameError: undefined local variable or method `b' for main:Object