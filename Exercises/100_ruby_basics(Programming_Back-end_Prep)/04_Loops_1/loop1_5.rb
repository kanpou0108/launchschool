# Say Hello
# Modify the code below so "Hello!" is printed 5 times.
# 
# say_hello = true
# 
# while say_hello
#   puts 'Hello!'
#   say_hello = false
# end

say_hello = true
cnt=0

while say_hello
  puts 'Hello!'
  say_hello = false if cnt == 4
  cnt += 1
end