# 15:44

class Person
  # attr_accessor :name
  
  def name=(new_name)
    @name = new_name
  end
  
  def name
    @name
  end
end

bob = Person.new
# bob.name = 'Bob'  # here is not assignment. here is method invocation.
bob.name=('Bob')

p bob.name