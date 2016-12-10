# Example of a method that modifies its argument permanently
# mutate.rb
# Learning Ruby methods and how you should use them
# https://launchschool.com/books/ruby/read/methods#mutatingthecaller

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"