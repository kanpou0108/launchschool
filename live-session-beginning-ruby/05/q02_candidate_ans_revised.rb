# Write a method that takes a string, and returns a boolean indicating whether this string has a balanced set of parentheses.

# ややこしいな. 最初のreturn文はやめて。 empty? or zero? 確認した方がキレイになる。
def balancer(string)
  return false unless string.count("(") == string.count(")")
  
  # detect order is also good.
  paren_count = 0
  
  string.chars.each do |char|
    paren_count += 1 if char == "("
    paren_count -= 1 if char == ")"
    return false if paren_count < 0
  end
  
  # paren_count.zero?
  return true
end

p balancer("hi") #=> true
p balancer("(hi") #=> false
p balancer("(hi)") #=> true

# Bonus
p balancer(")hi(") #=> false
