def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)

puts a
# => 5

# some_method内のa(number)と、トップレベル内のaはは異なる
# some_method内で
# a = 7
# とassignmentをしているが、これはトップレベル内のaとは別のassignmentである。