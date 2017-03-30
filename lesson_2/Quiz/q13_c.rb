require 'pry'

def mutate(string)
  p string.object_id
  # 70239782460680
  string << " there"
end

str = "FUGA"
p "before: #{str.object_id}"
# "before: 70239782460680"
mutate(str)
p "after: #{str.object_id}"
# "after: 70239782460680"

p str
# "FUGA there"