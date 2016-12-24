def swap_name(string)
  name, lname = string.split
  "#{lname}, #{name}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'