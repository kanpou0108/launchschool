# pass by reference vs pass by value
def a_method(param)
  param += " universe"  # param = param + " universe"
  # param + " universe"
  param << " world"
end

str = 'hello'
a_method(str)

p str
# => "hello"