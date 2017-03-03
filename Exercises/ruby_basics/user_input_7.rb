# $ ruby login.rb
# >> Please enter user name:
# John
# >> Please enter your password:
# Hello
# >> Authorization failed!
# >> Please enter user name:
# mary
# >> Please enter your password:
# SecreT
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# root
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# SecreT
# Welcome!

USER = "admin"
PASS = "SecreT"

loop do
  puts ">> Please enter user name:"
  user = gets.chomp
  puts ">> Please enter your password:"
  pass = gets.chomp
  if user = USER && pass == PASS
    puts "Welcome!"
    break
  else
    # puts ">> Invalid password!"
    puts '>> Authorization failed!'
  end
end