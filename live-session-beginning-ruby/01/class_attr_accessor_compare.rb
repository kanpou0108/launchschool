# 20:00

class Person
  def age
    @age
  end
  
  def age=(a)
    @age = a
  end
  
  def >(other)
    self.age > other.age
    # 'hi there'
  end
end

bob = Person.new
bob.age = 30

jim = Person.new
jim.age = 50

# p bob > jim
p(bob.>(jim))

# Ruby has a lot of depth behind the scene.
# Don't let fussyness go.