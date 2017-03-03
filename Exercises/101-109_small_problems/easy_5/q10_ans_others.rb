def print_in_box(string)
  padding = string.size

  puts <<~EOL
  +-#{'-'*padding}-+
  | #{' '*padding} |
  | #{     string} |
  | #{' '*padding} |
  +-#{'-'*padding}-+
  EOL
end

puts print_in_box('To boldly go where no one has gone before.')
puts print_in_box('')
