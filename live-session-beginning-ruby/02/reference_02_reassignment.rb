# pass by reference vs pass by value
def a_method(param)
  # param = " universe"
  param = "hello"
  p param.object_id
  # param + " universe"
  param << " world"
end

str = 'hello'
p str.object_id
a_method(str)

p str
# => "hello"

# = でも += でもメソッド内でやっていることは同じ
