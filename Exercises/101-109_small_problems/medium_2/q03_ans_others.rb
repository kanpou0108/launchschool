def letter_percentages(str)
  upper = str.chars.count { |char| char =~ /[A-Z]/ }
  lower = str.chars.count { |char| char =~ /[a-z]/ }
  neither = str.chars.count { |char| char =~ /[^a-z]/i }

  total = str.size
  hsh = {}
  hsh[:lowercase] = lower * 100.0 / total
  hsh[:uppercase] = upper * 100.0 / total
  hsh[:neither] = neither * 100.0 / total
  hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }