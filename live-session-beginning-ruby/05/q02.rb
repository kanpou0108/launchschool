# Write a method that takes a string, and returns a boolean indicating whether this string has a balanced set of parentheses.

def balancer(string)
  parens = []
  string.chars.each do |char|
    if char == "("
      parens << char
    elsif char == ")"
      return false if parens.empty?
      parens.pop
    end
  end
  parens.empty?
end

p balancer("hi") #=> true
p balancer("(hi") #=> false
p balancer("(hi)") #=> true

# Bonus
p balancer(")hi(") #=> false
