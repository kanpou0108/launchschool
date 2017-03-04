NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
  # numbers.sort { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# ↓ failed
# q08_ans_test.rb:7:in `>': comparison of String with 0 failed (ArgumentError)
# 	from q08_ans_test.rb:7:in `sort'
# 	from q08_ans_test.rb:7:in `alphabetic_number_sort'
# 	from q08_ans_test.rb:10:in `<main>'