# $ ruby password.rb
# >> Please enter your password:
# Hello
# >> Invalid password!
# >> Please enter your password:
# Secret
# >> Invalid password!
# >> Please enter your password:
# SecreT
# Welcome!

loop do
  puts ">> Please enter your password:"
  pass = gets.chomp
  if pass == "SecreT"
    puts "Welcome!"
    break
  else
    puts ">> Invalid password!"
  end
  
end
