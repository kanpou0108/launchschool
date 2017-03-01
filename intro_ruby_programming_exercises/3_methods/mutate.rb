# Example of a method that modifies its argument permanently
# mutate.rb

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
# => "Before mutate method: [1, 2, 3]"
mutate(a)
p "After mutate method: #{a}"
# => "After mutate method: [1, 2]"
