def a_method(param)
  #reassignment 
  # param += " world"  # param = param + " world"
  
  # method invocation. `+`と`.+()`は同義. sytactical sugar.
  # not mutate call.
  param + " world"
  
  # method invocation. left shift double operator.
  # mutate(permanent destructive) call.
  # param << " world"
end

str = 'hello'
a_method(str)

p str