# A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no significant chance of stepping on each other's toes.
# 
# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.
# 
# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.
# 
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# 
# Write a method that returns one UUID when called with no parameters.
# 

def generate_letter(cnt)
  letters = ("0".."9").to_a + ("a".."f").to_a
  word = ""
  cnt.times do
    word << letters.sample
  end
  word
end

def generate_uuid()
  "#{generate_letter(8)}-#{generate_letter(4)}-#{generate_letter(4)}-#{generate_letter(4)}-#{generate_letter(12)}"
end

p generate_uuid()

# ↓failed
# def generate_uuid()
#   pattern = [8,4,4,4,12]
#   uuid = ""
#   pattern.each do |v|
#     v.times do
#       uuid << generate_letter()
#     end
#     uuid << "-"  
#   end
#   uuid
# end

# each_with_index を使って、、以下を追加すればいけた
# unless index >= sections.size - 1