# What is exception handling and what problem does it solve?

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each.with_index(1) do |name, i|
  begin
    puts "No.#{i}: #{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end


# expection handling is a structure used to handle the possibility of an error occuring in a program. 
# It handles the error in a way that modifies the flow control of a program so that it doesn't stop and continue executing commands.

# Solution
# Exception handling is a structure used to handle the possibility of an error occurring in a program. 
# It is a way of handling the error by changing the flow of control without exiting the program entirely.
