def staggered_case_opt(string, first_char_up = true)
  new_string = string.downcase.chars
  if first_char_up
    new_string.each_with_index do |char, i|
      i.even? ? char.upcase! : next
    end
  else
    new_string.each_with_index do |char, i|
      i.odd? ? char.upcase! : next
    end
  end
  new_string.join
end

p staggered_case_opt('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case_opt('ALL_CAPS') == 'AlL_CaPs'
p staggered_case_opt('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case_opt('I Love Launch School!')