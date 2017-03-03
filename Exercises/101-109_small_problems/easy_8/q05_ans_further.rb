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

def palindromic?(str, ignore_nonalphanumeric=true, ignore_case=true)
  str = str.gsub(/\W/,'') if ignore_nonalphanumeric
  str = str.downcase if ignore_case
  str.length > 1 && str == str.reverse
end

def palindromes(str)
  substrings(str).select { |substring| palindromic?(substring) }
  # substrings(str).select { |substring| palindromic?(substring, false) }
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

p palindromes('hello-madam-did-madam-goodbye')
# => ["ll", "-madam", "-madam-", "-madam-did-madam", "-madam-did-madam-", "madam", "madam-", "madam-did-madam", "madam-did-madam-", "ada", "adam-did-mada", "dam-did-mad", "am-did-ma", "m-did-m", "-did", "-did-", "did", "did-", "-madam", "-madam-", "madam", "madam-", "ada", "oo"]
  
# Further exploration
# Method with optional arguments to determine whether it should ignore non-alphanumeric characters and/or 
# case in determining if a string is palindromic (preceding methods stay the same):