# Example of a method that does not mutate the caller
# mutate.rb

a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
# => "Before mutate method: [1, 2, 3]"
no_mutate(a)
p "After no_mutate method: #{a}"
# => "After mutate method: [1, 2, 3]"
