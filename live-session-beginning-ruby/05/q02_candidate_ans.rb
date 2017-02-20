# Write a method that takes a string, and returns a boolean indicating whether this string has a balanced set of parentheses.

# ややこしいな. 最初のreturn文はやめて。 empty確認した方がキレイになる。
def balancer(string)
  return false unless string.count("(") == string.count(")")
  
  # detect order is also good.
  paren_count = 0
  return_flg = true
  
  string.chars.each do |char|
    paren_count += 1 if char == "("
    paren_count -= 1 if char == ")"
    if paren_count < 0
      return_flg = false
      break
    end
  end
  
  return_flg
end

p balancer("hi") #=> true
p balancer("(hi") #=> false
p balancer("(hi)") #=> true

# Bonus
p balancer(")hi(") #=> false
