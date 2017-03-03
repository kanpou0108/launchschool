# Staggered Caps (Part 1)
# 
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.
# 
# Example:

# failed......
def staggered_case(strs)
  result = strs.split.each do |str|
    p str.chars
    str.chars.map!.with_index do |letter, idx|
      if idx.even?
        letter.upcase!
      else
        letter.downcase!
      end
    end
    p str
    str
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!')