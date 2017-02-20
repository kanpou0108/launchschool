# take a string as an argument, return the string in reverse order

def reverser(string)
  new_arr = []
  str_arr = string.split('')
  string.size.times do |i|
    new_arr << str_arr[-1 - i]
  end
  new_arr.join
end

p reverser("hello")