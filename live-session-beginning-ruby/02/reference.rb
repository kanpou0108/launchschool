def a_method(param)
  # 1. reassignment (not inialization)
  # param += " world"  # param = param + " world"
  
  # 2. method invocation. `+`と`.+()`は同義. sytactical sugar.
  # not mutate call.
  param + " world"
  
  # 3. method invocation. left shift double operator.
  # mutate(permanent destructive) call.
  # param << " world"
end

str = 'hello'
a_method(str)

p str