def remove_vowels(array)
  array.map { |chars| chars.scan(/[^aeiou]/i).join }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# "YELLOW".scan(/[^aeiou]/i)
# => ["Y", "L", "L", "W"]