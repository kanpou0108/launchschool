# Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

cnt = 0

while cnt < number_of_greetings
  greeting
  cnt += 1
end