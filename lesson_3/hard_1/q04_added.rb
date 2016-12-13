def generate_letter(cnt)
  letters = ("0".."9").to_a + ("a".."f").to_a
  word = ""
  cnt.times do
    word << letters.sample
  end
  word
end

def generate_uuid()
  pattern = [8,4,4,4,12]
  uuid = ""
  pattern.each_with_index do |v, idx|
    uuid << generate_letter(v)
    uuid << "-"  if idx < pattern.size-1 
  end
  uuid  
end

p generate_uuid()
