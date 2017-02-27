# pass by reference vs pass by value
def a_method(param)
  # param += " universe"  # param = param + " universe"  # reassignment!!
  param + " universe"
  param << " world"
end

str = 'hello'
a_method(str)

p str
# => "hello world"