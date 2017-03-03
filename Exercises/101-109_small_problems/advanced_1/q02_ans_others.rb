def print_row(size, spaces)
  puts ("*" + " " * spaces + "*" + " " * spaces + "*").center(size)
end

def star(size)
  spaces = (size - 3) / 2
  spaces.downto(0) { |space| print_row(size, space) }
  puts "*" * size
  (0).upto(spaces) { |space| print_row(size, space) }
end

star(7)
puts "----------------------"
star(9)

