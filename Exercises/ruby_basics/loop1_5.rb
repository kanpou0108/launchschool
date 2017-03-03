say_hello = true
cnt=0

while say_hello
  puts 'Hello!'
  say_hello = false if cnt == 4
  cnt += 1
end