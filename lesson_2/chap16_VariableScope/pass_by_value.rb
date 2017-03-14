def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name           # => jim

# pass_by_value is not true.
# in fact, ruby passes around copies of the references. 

# inside `name` and outside `name` are like `a` and `b` in 「Variables as Pointers」.
# They are same `name` but have a different scope(method scope).
# so, 

# Ruby tutorial - Regex, Ruby Standard Classes, Blocks and Procs and more
# https://launchschool.com/books/ruby/read/more_stuff#variables_as_pointers

# STEP1
# outside `name` を change_nameメソッドのname引数として渡して時点で、
# 「outside `name` の参照のコピー」がchange_nameメソッドが渡される
# 
# STEP2
# change_nameメソッドに内で、inside `name`、をreassignmentしているが、
# これはoutside `name`には影響しない！！(なぜなら参照のコピーなので！！)
# inside `name` と outside `name` はそれぞれ別の変数である。
