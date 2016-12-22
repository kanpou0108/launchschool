def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# p palindromes('madam')
# ["a", "ab", "abc", "abcd", "b", "bc", "bcd", "c", "cd", "d"]

# p palindromes('madam')
# ["m", "ma", "mad", "mada", "madam", "a", "ad", "ada", "adam", "d", "da", "dam", "a", "am", "m"]

# p palindromes('knitting cassettes')  
# ["k", "kn", "kni", "knit", "knitt", "knitti", "knittin", "knitting", "knitting ", "knitting c", "knitting ca", "knitting cas", "knitting cass", "knitting casse", "knitting casset", "knitting cassett", "knitting cassette", "knitting cassettes", "n", "ni", "nit", "nitt", "nitti", "nittin", "nitting", "nitting ", "nitting c", "nitting ca", "nitting cas", "nitting cass", "nitting casse", "nitting casset", "nitting cassett", "nitting cassette", "nitting cassettes", "i", "it", "itt", "itti", "ittin", "itting", "itting ", "itting c", "itting ca", "itting cas", "itting cass", "itting casse", "itting casset", "itting cassett", "itting cassette", "itting cassettes", "t", "tt", "tti", "ttin", "tting", "tting ", "tting c", "tting ca", "tting cas", "tting cass", "tting casse", "tting casset", "tting cassett", "tting cassette", "tting cassettes", "t", "ti", "tin", "ting", "ting ", "ting c", "ting ca", "ting cas", "ting cass", "ting casse", "ting casset", "ting cassett", "ting cassette", "ting cassettes", "i", "in", "ing", "ing ", "ing c", "ing ca", "ing cas", "ing cass", "ing casse", "ing casset", "ing cassett", "ing cassette", "ing cassettes", "n", "ng", "ng ", "ng c", "ng ca", "ng cas", "ng cass", "ng casse", "ng casset", "ng cassett", "ng cassette", "ng cassettes", "g", "g ", "g c", "g ca", "g cas", "g cass", "g casse", "g casset", "g cassett", "g cassette", "g cassettes", " ", " c", " ca", " cas", " cass", " casse", " casset", " cassett", " cassette", " cassettes", "c", "ca", "cas", "cass", "casse", "casset", "cassett", "cassette", "cassettes", "a", "as", "ass", "asse", "asset", "assett", "assette", "assettes", "s", "ss", "sse", "sset", "ssett", "ssette", "ssettes", "s", "se", "set", "sett", "sette", "settes", "e", "et", "ett", "ette", "ettes", "t", "tt", "tte", "ttes", "t", "te", "tes", "e", "es", "s"]


# Palindromic Substrings
# 
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.
# 
# You may (and should) use the substrings method you wrote in the previous exercise.
# 
# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.
# 
# Examples: