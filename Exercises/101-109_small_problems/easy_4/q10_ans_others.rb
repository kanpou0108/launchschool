def integer_to_string(int)
  integer_array = []
  integer_array << int if int.zero?
  while int > 0
    digit = int % 10
    int /= 10
    integer_array << digit
  end
  integer_array.reverse.join
end

def signed_integer_to_string(num)
  str = integer_to_string(num.abs)
  case
  when num < 0 then str.prepend('-')
  when num > 0 then str.prepend('+')
  else '0'
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'