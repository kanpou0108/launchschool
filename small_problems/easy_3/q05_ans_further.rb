# Further Exploration:
def multiply(n1, n2)
  n1 * n2
end

def to_the_power(num, power)
  if power.even?
    multiply(num, num) ** (power / 2)
  else
    num * multiply(num, num) ** (power / 2)
  end
end

p to_the_power(5, 3)